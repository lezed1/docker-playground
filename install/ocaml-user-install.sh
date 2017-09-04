#!/usr/bin/env bash
set -euo pipefail

opam init
opam switch 4.05.0
eval `opam config env`
opam install async core jbuilder merlin ocp-indent utop
