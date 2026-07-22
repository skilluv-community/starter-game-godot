.PHONY: help test export-web export-linux clean

GODOT ?= godot

help:
	@echo "Requires the Godot editor installed and 'godot' on PATH (or set GODOT=)."
	@echo "Targets:"
	@echo "  test          — run GUT unit tests headless"
	@echo "  export-web    — export HTML5 build to builds/web/"
	@echo "  export-linux  — export Linux build to builds/linux/"
	@echo "  clean         — remove builds/ and .godot/ cache"

test:
	$(GODOT) --headless --path . -s res://addons/gut/gut_cmdln.gd -gdir=res://tests/gut -gexit

export-web:
	mkdir -p builds/web
	$(GODOT) --headless --path . --export-release "Web" builds/web/index.html

export-linux:
	mkdir -p builds/linux
	$(GODOT) --headless --path . --export-release "Linux" builds/linux/game.x86_64

clean:
	rm -rf builds .godot
