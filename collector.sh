#!/bin/bash

SOURCE_FILE=~/Documents/Brock
DEST_FILE=${SOURCE_FILE}/4f00-files

mkdir -p ${DEST_FILE}

find ${SOURCE_FILE} -type f \( -name "*.java" -or -name "*.c" -or -name "*.cpp" -or -name "*.h" -or -name "*.hpp" \) -exec cp {} ${DEST_FILE} \;

NUM_FILES="$(ls -lq "${DEST_FILE}" | wc -l)"
echo Found "${NUM_FILES}" files

tar -zcvf ${DEST_FILE}.tar.gz ${DEST_FILE}

echo Done.


