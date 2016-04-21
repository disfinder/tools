#!/bin/bash
set -x
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage:"
    echo "  $0 DESTINATION_DIR"
    exit 0
fi

function perform_backup
{
  # tar cf - ${BACKED_DIR} -P | pv -s $(du -sb /${BACKED_DIR} | awk '{print $1}') | gzip > ${ARCHIVE_DIR}/big-files.tar.gz
  echo "Perform calcutation for ${1}..."
  SIZE_TO_BACKUP=$(du -sb ${1} | awk '{print $1}')
  echo "Size is: ${SIZE_TO_BACKUP}"
  # echo "2 = $2"
  # echo "3 = $3"
  # echo "${2}/${3}.tar.gz"
  tar cf - ${1} -P | pv -s ${SIZE_TO_BACKUP} | gzip > "${2}"/"${3}".tar.gz
  echo "Done ${1}"
}


DESTDIR=$1
TODAY=$(date "+%Y-%m-%d")
ARCHIVE_DIR=${DESTDIR}/${TODAY}
echo "Prepare: create destination dir ${ARCHIVE_DIR}"
mkdir -p "${ARCHIVE_DIR}"



BACKED_DIR=/mnt/big/out/develop
# tar cf - ${BACKED_DIR} -P | pv -s $(du -sb /${BACKED_DIR} | awk '{print $1}') | gzip > ${ARCHIVE_DIR}/big-files.tar.gz
perform_backup "${BACKED_DIR}" "${ARCHIVE_DIR}" "develop"
