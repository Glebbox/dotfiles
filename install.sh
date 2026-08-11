#!/usr/bin/env bash
set -eu
DOTFILESDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo -e "Download start"
create_symlink
