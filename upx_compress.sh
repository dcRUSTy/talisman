#!/bin/bash
# UPX Install START
# Install UPX 3.96(Latest for linux) working version
wget https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz
sha256sum upx-3.96-amd64_linux.tar.xz | grep -i 'AC75F5172C1C530D1B5CE7215CA9E94586C07B675A26AF3B97F8421B8B8D413D' || exit -1
tar -xf upx-3.96-amd64_linux.tar.xz
PATH="$PATH:`pwd`/upx-3.96-amd64_linux"
# UPX Install END
upx --lzma talisman_{l,d,w}*
upx -t talisman_{l,d,w}*
shasum -b -a256 talisman_{l,d,w}* > checksums