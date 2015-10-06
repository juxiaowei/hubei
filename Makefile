# Makefile
.PHONY: server
server:
  # WARNING: The indentation MUST be a tab. Spaces won't work.
	browser-sync start --server --files=index.html

.PHONY: css
css:
	mkdir -p bundle
	postcss --watch --use autoprefixer --use postcss-import css/app.css --output bundle/app.css

.PHONY: server
server:
	browser-sync start --server --files='index.html,list.html,bundle/app.css,js/app.js'

.PHONY: clean
clean:
	rm -r bundle
