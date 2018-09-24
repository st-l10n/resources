build:
	docker build -t gortc/steam .
update:
	./update-english.sh
release:
	./release.sh
update-locales:
	git submodule update --remote --merge
