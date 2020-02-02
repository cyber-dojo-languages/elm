#!/bin/bash -Eeu

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly EXPECTED=0.18.0
readonly ACTUAL=$(docker run --rm -it cyberdojofoundation/elm sh -c 'npm info elm version')

if echo "${ACTUAL}" | grep -q "${EXPECTED}"; then
  echo "VERSION CONFIRMED as ${EXPECTED}"
else
  echo "VERSION EXPECTED: ${EXPECTED}"
  echo "VERSION   ACTUAL: ${ACTUAL}"
  exit 42
fi
