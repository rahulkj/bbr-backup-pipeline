#!/bin/bash -eu

. $(dirname $0)/../../scripts/om-cmd

DATE=$(date '+%d-%h-%Y')

om_cmd --request-timeout 7200 export-installation --output-file om-installation/installation-$DATE.zip
