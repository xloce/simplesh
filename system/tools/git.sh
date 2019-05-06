# diff-so-fancy
if ! which diff-so-fancy > /dev/null; then # see: https://github.com/so-fancy/diff-so-fancy
	 mkdir -p "$HOME/.local/bin"
	 (cd "$HOME/.local/bin" && \
	 curl -Os https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy && \
	 chmod +x diff-so-fancy)
fi
