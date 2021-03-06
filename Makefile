demo/webppl-viz.js : src/index.js
	@browserify -t brfs "$<" > "$@"

watch :
	@watchify src/index.js -o demo/webppl-viz.js -v -t brfs

mirror :
	rsync --exclude=".git" --exclude="node_modules/" -rLvz demo/ corn:~/WWW/wp-viz
