# Create a time-based CSV script that would lock funds for 6 months (using 30-day months)
# Time-based CSV uses 512-second units with the type flag (bit 22) set
# publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

#Time in seconds
#seconds=$((6*30*24*60*60)) - 15552000 seconds
#nvalue=$(($seconds/512)) - 30375

#convert to hex value
#hexvalue=$(printf '%x\n' $nvalue)

#set the 23rd bit as 1 to make bitcoin interprete it as time instead of block.
#relativevalue=$(printf '%x\n' $((0x$hexvalue | 0x400000)))
#printf "%d\n" "0x$relativevalue"
#time value is 4224679

#convert publicKey to publicKeyHas
# echo -n $publicKey | xxd -r -p | openssl dgst -sha256 -binary | openssl dgst -rmd160

publicKeyHash=1e51fcdc14be9a148bb0aaec9197eb47c83776fb

# btcc 4224679 OP_CHECKSEQUENCEVERIFY OP_DROP OP_DUP OP_HASH160 $publicKeyHash OP_EQUALVERIFY OP_CHECKSIG

#After running the script commented out above, below is the script obtained from my CLI

CSV_Script_TimeBased="03a77640b27576a9141e51fcdc14be9a148bb0aaec9197eb47c83776fb88ac"

echo $CSV_Script_TimeBased