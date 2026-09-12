#!/bin/bash -Eeu

# elm/compiler's own npm installer carries a compiler binary per platform, as
# optional dependencies, @elm_binaries/linux_arm64 among them, and they are
# statically linked so they run on this musl base. That is what lets an image
# built on this one run natively on either architecture. The 0.19.1 installer
# published no arm64 binary at all and stopped the install outright without
# one, so anything pinned back to it could only ever be emulated.
#
# No version is named here, so a rebuild picks up the current release, and
# check_version.sh is what stops that happening silently.
npm install --global elm
