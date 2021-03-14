run:
	clear
	fennel-0.8.1 index.fnl 50
compile:
	mkdir -p dist
	fennel-0.8.1 --compile index.fnl > dist/out.lua
