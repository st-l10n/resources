build:
	docker build -t gortc/steam .
update:
	./update-english.sh
release:
	./release.sh

