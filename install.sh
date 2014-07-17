#!/bin/sh
which openssl > /dev/null
if test $? -ne 0; then
  echo "Not install openssl." 1>&2
  exit 1
fi

which base64 > /dev/null
if test $? -ne 0; then
  echo "Not install base64." 1>&2
  exit 1
fi

cd /tmp
curl -s -L -O  https://raw.github.com/mnomura/s3up/master/s3up
cp /tmp/s3up /usr/local/bin/s3up
chmod 755 /usr/local/bin/s3up
curl -s -L -O  https://raw.github.com/mnomura/s3up/master/.s3up
cp /tmp/.s3up ~/.s3up
chmod 600 ~/.s3up
#vi ~/.s3up
