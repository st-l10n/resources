build:
	docker build -t gortc/steam .
update:
	./update-english.sh
release:
	./release.sh
update-locales:
	git submodule update --remote --merge
generate:
	martian bake --input locales
upgrade: update update-locales generate release

