version := $(shell cat bower.json | jq -r .version)

all: build

build:
	@wget -r https://code.angularjs.org -I ${version} -A js,map; mv code.angularjs.org/${version}/* .; rm -rf code.angularjs.org