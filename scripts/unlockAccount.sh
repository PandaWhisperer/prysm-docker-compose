#!/bin/bash

# Read settings from .env
source .env

# Unlock ETH1.0 funding account
UNLOCK_ACCOUNT_CMD="personal.unlockAccount('${CREATE_ACCOUNT_ADDRESS}','${CREATE_ACCOUNT_PASSWORD}',3600)"
docker exec -it geth geth attach http://localhost:8545/ --exec="$UNLOCK_ACCOUNT_CMD"
