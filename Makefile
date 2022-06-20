all: build

build:
	hugo --minify -d "./public"

fmt:
	git ls-files | grep "html" | xargs prettier --ignore-unknown --write

clear:
	rm -rf ./public

serve:
	hugo server -v
