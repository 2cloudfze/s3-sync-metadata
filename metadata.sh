#!/bin/sh

sh -c "aws s3 sync ${SOURCE_DIR:-.} s3://${AWS_S3_BUCKET}/${DEST_DIR} \
        --profile s3-sync-action \
        --no-progress \
	      --content-type 'text/html' \
	      --exclude '*.*' \
        ${ENDPOINT_APPEND} $*"
