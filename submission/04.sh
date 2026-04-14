# Create a CLTV script with a timestamp of 1495584032 and public key below:
# publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

#convert timestamp of 1495584032 to hex 20cd2459 using ./integer2lehex.sh
#convert publicKey to publicKeyHash
# command used (echo -n $publicKey | xxd -r -p | openssl dgst -sha256 -binary | openssl dgst -rmd160)

publicKeyHash=1e51fcdc14be9a148bb0aaec9197eb47c83776fb

# btcc 20cd2459 OP_CHECKLOCKTIMEVERIFY OP_DROP OP_DUP OP_HASH160 $publicKeyHash OP_EQUALVERIFY OP_CHECKSIG

#After running the script commented out above, below is the script obtained from my CLI

CLTV_Script="0420cd2459b17576a9141e51fcdc14be9a148bb0aaec9197eb47c83776fb88ac"

echo $CLTV_Script
