#!/bin/sh -ex

mkdir -p _build
opam config -env > _build/env.sh
. ./_build/env.sh
ocamlbuild -j 4 -use-ocamlfind get_chapter_files.native transform_pandocbook.native html_code_highlight.native dump_paragraph_fragments.native
