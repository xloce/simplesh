#!/bin/bash

# list of shell git tools to install
tools=( https://raw.githubusercontent.com/paulirish/git-recent/master/git-recent \
https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy \
https://raw.githubusercontent.com/davidosomething/git-my/master/git-my \
https://raw.githubusercontent.com/davidosomething/git-ink/master/git-ink \
https://raw.githubusercontent.com/Fakerr/git-recall/master/git-recall \
https://raw.githubusercontent.com/alexdavid/git-branch-status/master/git-branch-status);

# list of pip tools to install
pips=( git-plus git-playback );

mkdir -p "$HOME/.local/bin";
for gitTool in ${tools[*]}
do
	toolName=$(echo "$gitTool"|grep -oP '[^\/]+$')
	if ! which "$toolName" > /dev/null; then
		(cd "$HOME/.local/bin" && \
		curl -Os "$gitTool" && \
		chmod +x "$toolName" &&
		echo "Installed $toolName")
	fi
done

for pipGitTool in ${pips[*]}
do
	if ! pip list installed --format=legacy|grep "$pipGitTool" > /dev/null; then
		pip install "$pipGitTool";
	fi
done
