if [ ! -f ~/.local/share/io.parity.ethereum/password ]; then
  	echo "First time running parity"
  	#Parity doesnt seem to allow unlocking of accounts on first run!
  	#Need to run then kill, then run again unlocked.
  	nohup parity --chain dev &
  	export PID=$!
  	sleep 5
  	kill -9 $PID

  	echo "" > ~/.local/share/io.parity.ethereum/password
fi

# Create log file if it doesn't exist
if [ ! -f /data/parity-logs/parity.log ]; then
	mkdir -p /data/parity-logs
	touch /data/parity-logs/parity.log
fi

nohup parity \
	--chain dev \
	--reseal-min-period 0 \
  --ws-port=8546 \
  --ws-interface=0.0.0.0 \
  --ws-origins=all \
  --ws-hosts=all \
  --jsonrpc-port=8545 \
  --jsonrpc-interface=0.0.0.0 \
  --jsonrpc-cors=all \
	--geth \
	--force-ui \
	--unsafe-expose \
	--unlock "0x00a329c0648769A73afAc7F9381E08FB43dBEA72" \
	--log-file /data/parity-logs/parity.log \
	--password "$HOME/.local/share/io.parity.ethereum/password" > /data/parity-logs/nohup.out 2>&1&

sleep 5
echo "Parity Running..."


#  Transfer ether to accounts
if [ ! -z "$TRANSFER_ACCOUNTS" ]; then
	echo "Transfering ether to accounts"
	for account in $(echo $TRANSFER_ACCOUNTS | sed -n 1'p' | tr ',' '\n'); do
	  	node /docker-scripts/transfer-ether.js "$account" "0x00a329c0648769A73afAc7F9381E08FB43dBEA72" $TRANSFER_AMOUNT
	done
fi


#Schedule blocks or keep alive
if [ "$NO_BLOCKS" = "true" ]
then
  echo "Block scheduling disabled"
  tail -f /dev/null
else
  echo "Block scheduling enabled"
  node /docker-scripts/parity-block-scheduler.js
fi
