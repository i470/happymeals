#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/axiom.png
ICON_DST=../../src/qt/res/icons/axiom.ico
convert ${ICON_SRC} -resize 16x16 axiom-16.png
convert ${ICON_SRC} -resize 32x32 axiom-32.png
convert ${ICON_SRC} -resize 48x48 axiom-48.png
convert ${ICON_SRC} -resize 256x256 axiom-256.png
convert axiom-16.png axiom-32.png axiom-48.png axiom-256.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/axiom_testnet.png
ICON_DST=../../src/qt/res/icons/axiom_testnet.ico
convert ${ICON_SRC} -resize 16x16 axiom-16.png
convert ${ICON_SRC} -resize 32x32 axiom-32.png
convert ${ICON_SRC} -resize 48x48 axiom-48.png
convert ${ICON_SRC} -resize 256x256 axiom-256.png
convert axiom-16.png axiom-32.png axiom-48.png axiom-256.png ${ICON_DST}
rm axiom-16.png axiom-32.png axiom-48.png axiom-256.png
