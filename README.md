# DDC Set Tools

This repository has a couple of bash scripts I use to manipulate xml files for work.

## What do they do?

Scripts will loop through folders, find all files called SET.xml, and change them.

`setupdate.sh` will decode, modify and encode a data tag.
`renamesets.sh` will rename SET.xml to include the parent folder name.

### Prerequisites

These scripts use xmlstarlet and base64.

```
sudo apt install xmlstarlet base64
```