#!/bin/sh

node run.js
npx real-favicon generate \
	faviconDescriptionExtended.json \
	io/output/faviconData.json io/output

cp io/input.svg io/output/favicon.svg
npx svgo -f io/output
