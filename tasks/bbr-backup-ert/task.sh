#!/bin/bash -eu

. "$(dirname $0)"/../../scripts/export-director-metadata

DATE=$(date '+%d-%h-%Y')

pushd ert-backup-artifact
  ../binary/bbr deployment --target "${BOSH_ADDRESS}" \
  --username "${BOSH_CLIENT}" \
  --deployment "${ERT_DEPLOYMENT_NAME}" \
  --ca-cert "${BOSH_CA_CERT_PATH}" \
  backup --with-manifest

  tar -cvf ert-backup-$DATE.tar -- *
popd