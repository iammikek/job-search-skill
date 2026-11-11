#!/bin/sh
# Fail if the blank templates have been filled in, or a mailbox address is present.
set -e
root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
cd "$root"

need() {
  if ! grep -R -q -F "$1" skill/references; then
    echo "A blank marker is missing from the templates: $1"
    exit 1
  fi
}

need "YYYY-MM-DD"
need "(the near band)"
need "(second priority)"

if grep -R -n -E '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' skill README.md; then
  echo "A mailbox address is in the public skill."
  exit 1
fi

echo "Public skill is still a blank procedure."
