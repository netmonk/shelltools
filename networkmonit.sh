#!/bin/bash
IF=$1
if [ -z "$IF" ]; then
        IF=`ls -1 /sys/class/net/ | head -1`
fi
RXPREV=-1
TXPREV=-1
echo "Listening $IF..."
while [ 1 == 1 ] ; do
        RX=`cat /sys/class/net/${IF}/statistics/rx_bytes`
        TX=`cat /sys/class/net/${IF}/statistics/tx_bytes`
        if [ $RXPREV -ne -1 ] ; then
                #let BWRX=($RX-$RXPREV)/1024/1024
                #let BWTX=($TX-$TXPREV)/1024/1024
		BWRX=$(echo "scale=5; ($RX-$RXPREV)/1024/1024"| bc -l)
		BWTX=$(echo "scale=5; ($TX-$TXPREV)/1024/1024"| bc -l)
                echo "Received: $BWRX MB/s    Sent: $BWTX MB/s"

        fi
        RXPREV=$RX
        TXPREV=$TX
        sleep 1
done
