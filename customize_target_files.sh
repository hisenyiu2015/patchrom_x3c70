#/bin/bash

if [ -e metadata/updater ]
then
   echo "Use custom updater bin file"
   cp metadata/updater out/target_files/OTA/bin
fi

cp -f patchrom/file_contexts out/target_files/META/
rm -rf out/target_files/SYSTEM/preload
