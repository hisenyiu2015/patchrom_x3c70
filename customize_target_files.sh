#/bin/bash

if [ -e metadata/updater ]
then
   echo "Use custom updater bin file"
   cp metadata/updater out/target_files/OTA/bin
fi

