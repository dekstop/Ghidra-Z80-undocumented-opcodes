#!/bin/sh
CWD="$(cd `dirname $0`; pwd)"
LANGDIR="${CWD}/Z80/data/languages"
SLEIGH=~/Applications/ghidra_10.1.2_PUBLIC/Ghidra/Features/Decompiler/os/mac_x86_64/sleigh
# FLAGS=-n -u
FLAGS=
"$SLEIGH" $FLAGS "${LANGDIR}/z80-undocumented.slaspec" "${LANGDIR}/z80-undocumented.sla" || exit 1
