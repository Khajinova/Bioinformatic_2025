#!/bin/bash



for file in *.tsv; do
	[ -e "$file" ] || continue
	name="${file%.tsv}"
	mkdir -p "$name"
	mv "$file" "$name"
done
