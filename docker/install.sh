#!/bin/sh -eu

# Records the PHP this image holds, in the shape every image shares. The
# installed interpreter is asked, so the version is one the image can run
# rather than one written down when someone last edited this file.
readonly LANGUAGE_VERSION=$(php -r 'echo PHP_VERSION;')

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from PHP_VERSION' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "PHP",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
