#!/bin/bash
ADDITIONAL_ARGS="${@:2}"

if [ "$1" = "markdown-pdf" ]; then
		markdown-pdf $ADDITIONAL_ARGS 
else
	cd ~
	echo "If you wanted to use the container to build a pdf from a markdown file, you have to invoke the container with command \"markdown-pdf\" and mount the project to /doc"
	echo "Invoking container with command(s) ${@}..."
	"${@}"
fi
