#!/bin/sh 

print_header() {
	printf '\033[33m %s \033[0m\n' "$1"
}

print_contents() {
	printf '\033[30;1m %s \033[0m\n' "$1"
}

print_header "== CORE =="
for dir in core/*; do
	if [[ ! -L $dir && -d $dir ]]; then
		print_contents $(basename $dir)
	fi
done

print_header "== EXTRA =="
for dir in extra/*; do
	if [[ ! -L $dir && -d $dir ]]; then
		print_contents $(basename $dir)
	fi
done

print_header "== XORG =="
for dir in xorg/*; do
	if [[ ! -L $dir && -d $dir ]]; then
		print_contents $(basename $dir)
	fi
done
