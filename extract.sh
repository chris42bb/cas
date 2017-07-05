#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"

if [[ -f spaceCo.jpg ]]; then
  steghide extract -sf spaceCo.jpg
  tar -xvf backup.tar
  rm backup.tar
  rm spaceCo.jpg
fi
