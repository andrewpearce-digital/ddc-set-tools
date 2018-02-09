#! /bin/bash
PROGRESS=0
#for all files called SET.xml in subfolders
shopt -s nullglob
for FILE in $(find -name 'SET.xml')
do
# get the xml tag, base64 decode it, find and remove page16 tag, base64 encode it, write it back into the xml tag
xmlstarlet sel -t -v "//XML" -n $FILE >b64.bit && base64 --decode b64.bit > decoded.bit && xmlstarlet ed -d "//Page16" decoded.bit > lpa.bit && base64 lpa.bit >encoded.bit
xmlstarlet ed --inplace -u "//XML" -v encoded.bit $FILE
rm *.bit
echo "$FILE updated"
((PROGRESS++))
done
echo "$PROGRESS files processed"