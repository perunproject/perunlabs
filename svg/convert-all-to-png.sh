#!/bin/bash

SVG_DIR=`dirname ${0}`

function convert_file {
  INPUT="$1".svg
  OUTPUT="${SVG_DIR}"/../img/"$1".png
  WIDTH="$2"
  HEIGHT="$3"

  if [ "${INPUT}" -nt "${OUTPUT}" ]; then
    inkscape --export-width="${WIDTH}" --export-height="${HEIGHT}" --export-png="${OUTPUT}" "${INPUT}"
    png-squeeze-full "${OUTPUT}"
  fi
}

cd "${SVG_DIR}"

convert_file games 256 64
convert_file sokoban 500 250
convert_file supaplex 500 250
convert_file tile 32 32

