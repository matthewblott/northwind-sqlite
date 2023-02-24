.PHONY: clean build run
.DEFAULT_GOAL := build

clean:
	rm -rf ./dist
	mkdir ./dist

build: clean
	sqlite3 dist/northwind.db < src/create.sql > /dev/null
	sqlite3 dist/northwind.db < src/update.sql > /dev/null

populate:
	python3 ./src/populate.py
