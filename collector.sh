#!/bin/bash

SOURCE_FILE=$HOME/Documents/Brock
SOURCE_FILE1=$SOURCE_FILE/1st-Year/
SOURCE_FILE2=$SOURCE_FILE/3rd-Year/COSC3P99
SOURCE_FILE3=$SOURCE_FILE/2nd-Year/COSC2P95/Lab*
DEST_FILE=${SOURCE_FILE}/4f00-files

mkdir -p ${DEST_FILE}

for f in ${SOURCE_FILE1} ${SOURCE_FILE2} ${SOURCE_FILE3}; do
    find $f -type f \( -name "*.java" -or -name "*.c" -or -name "*.cpp" -or -name "*.h" -or -name "*.hpp" \) -exec cp {} ${DEST_FILE} \;

done

NUM_FILES="$(ls -lq "${DEST_FILE}" | wc -l)"
echo Found "${NUM_FILES}" files

tar -zcvf ${DEST_FILE}.tar.gz ${DEST_FILE}

echo Done.


