#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

AXIOMD=${AXIOMD:-$SRCDIR/axiomd}
AXIOMCLI=${AXIOMCLI:-$SRCDIR/axiom-cli}
AXIOMTX=${AXIOMTX:-$SRCDIR/axiom-tx}
AXIOMQT=${AXIOMQT:-$SRCDIR/qt/axiom-qt}

[ ! -x $AXIOMD ] && echo "$AXIOMD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BTCVER=($($AXIOMCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for axiomd if --version-string is not set,
# but has different outcomes for axiom-qt and axiom-cli.
echo "[COPYRIGHT]" > footer.h2m
$AXIOMD --version | sed -n '1!p' >> footer.h2m

for cmd in $AXIOMD $AXIOMCLI $AXIOMTX $AXIOMQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
