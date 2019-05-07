# diff-so-fancy
if ! which diff-so-fancy > /dev/null; then 
	arr[0]="https://github.com/paulirish/git-recent/blob/master/git-recent"
	arr[1]="https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy"

	mkdir -p "$HOME/.local/bin"
	for gitTool in ${arr[*]}
	do
		 (cd "$HOME/.local/bin" && \
		 curl -Os  && "$gitTool" \
		 chmod +x diff-so-fancy)
	done
fi
if which pip > /dev/null; then # https://github.com/tkrajina/git-plus
	pip install git-plus;
	pip install git-playback;
fi
