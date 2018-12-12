#!/bin/bash
set -xeuo pipefail
. ./string.sh

echo aabbcc | string_sub b d
echo aabbcc | string_sub b '/'
echo aabbcc | string_gsub b '/'
