#!/usr/bin/env bash
pdf2svg $1 $1.tmp.%d.svg all
for f in $(ls -1 $1.tmp.*.svg); do
	svgcleaner --multipass $f $2$(basename ${f/.pdf.tmp/})
	rm $f
done