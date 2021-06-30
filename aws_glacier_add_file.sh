USRID=466254172134
MYVAULT=Atmospheric-Data




















dd if=./ of=Jupyter2020_06_4_12_72469_upperair.txt bs=6000 count=1

gsplit --bytes=1048576 --verbose largefile chunk

aws glacier initiate-multipart-upload --account-id 466254172134 --archive-description "multipart upload test" --part-size 2000 --vault-name Atmospheric-Data
read -r a b c <<<$(echo 1 2 3) ; echo "$a|$b|$c"
UPLOADID2=b
UPLOADID="enGexcgsUMj3TofguNOC604lz0c6OIFMrvSxohYywUj63SPTpHic84Hsc0Aj2RGT-J-ChB5fVwk8oVZOYzqmPFcwIPC1"

"""
aws glacier upload-multipart-part --upload-id $UPLOADID --body chunkaa --range 'bytes 0-1048575/*' --account-id 466254172134 --vault-name Atmospheric-Data
aws glacier upload-multipart-part --upload-id $UPLOADID --body chunkab --range 'bytes 1048576-2097151/*' --account-id 466254172134 --vault-name Atmospheric-Data
aws glacier upload-multipart-part --upload-id $UPLOADID --body chunkac --range 'bytes 2097152-3145727/*' --account-id 466254172134 --vault-name Atmospheric-Data

openssl dgst -sha256 -binary chunkaa > hash1
openssl dgst -sha256 -binary chunkab > hash2
openssl dgst -sha256 -binary chunkac > hash3
cat hash1 hash2 > hash12
openssl dgst -sha256 -binary hash12 > hash12hash
cat hash12hash hash3 > hash123
TREEHASH=$(openssl dgst -sha256 hash123)

#TREEHASH=46ebce11743a772f975e826b91ae0eab7056b0680198f8215a08c924ab72fadd

aws glacier complete-multipart-upload --checksum $TREEHASH --archive-size 3145728 --upload-id $UPLOADID --account-id 466254172134 --vault-name Atmospheric-Data

aws glacier describe-vault --account-id $USRID --vault-name $MYVAULT
"""
