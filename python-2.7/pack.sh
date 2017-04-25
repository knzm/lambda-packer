#!/bin/sh -ex

rm -rf /tmp/lambda_package
mkdir -p /tmp/lambda_package/lib
pip install -t /tmp/lambda_package/lib $@

rm -f /app/lambda_function.zip
(cd /tmp/lambda_package; zip -r /app/lambda_function.zip lib/)
