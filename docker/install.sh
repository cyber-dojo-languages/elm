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

# Records the Elm this image holds, in the shape every image shares. The
# installed compiler is asked, so the version is one the image can run rather
# than one written down when someone last edited this file.
readonly LANGUAGE_VERSION=$(elm --version)

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from elm --version' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "Elm",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
