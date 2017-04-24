all: clip

show:
	json-minify mattermost.json

clip:
	@json-minify mattermost.json | xclip -i  -selection clipboard

build:
	docker build -t mattermosttheme .

dclip: build
	@docker run mattermosttheme | xclip -i  -selection clipboard
