release:
	./release.sh
update-locales:
	git submodule update --remote --merge
generate:
	martian bake --input locales
upgrade: update-locales generate release

