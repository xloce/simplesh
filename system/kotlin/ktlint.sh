#! /bin/bash

if [ ! $(which ktlint) ]; then
	# see 'Installation' at https://github.com/pinterest/ktlint
	curl -sSLO https://github.com/shyiko/ktlint/releases/download/0.31.0/ktlint && \
	chmod a+x ktlint && \
	sudo mv ktlint /usr/local/bin/
else
	echo "Ktlint already installed at `which ktlint`."
fi
