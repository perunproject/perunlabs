#!/bin/bash

SVG_DIR=`dirname ${0}`
IMG_DIR="${SVG_DIR}"/../img

cd "${SVG_DIR}"

inkscape --export-width=256 --export-height=64 --export-png="${IMG_DIR}"/games.png games.svg 
png-squeeze-full "${IMG_DIR}"/games.png

inkscape --export-width=500 --export-height=250 --export-png="${IMG_DIR}"/sokoban.png sokoban.svg
png-squeeze-full "${IMG_DIR}"/sokoban.png

