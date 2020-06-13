#!/bin/bash

GET_BALANCE_CMD="web3.fromWei(eth.getBalance(web3.eth.coinbase), 'ether')"
docker exec -it geth geth attach http://localhost:8545/ --exec="$GET_BALANCE_CMD"
