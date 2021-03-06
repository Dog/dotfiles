#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude ".macos" \
		--exclude "README.md" \
		--exclude "brew.sh" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

sudo softwareupdate -i -a

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	sh ./.macos;
	sh ./brew.sh
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sh ./.macos;
		sh ./brew.sh
		doIt;
	fi;
fi;
unset doIt;
