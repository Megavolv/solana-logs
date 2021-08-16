#!/bin/sh

export SOLANA_METRICS_CONFIG="host=https://metrics.solana.com:8086,db=tds,u=testnet_write,p=c4fa841aa918bf8274e3e2a44d77568d9861b3ea"
export RUST_LOG=INFO

exec solana-validator --identity ~/id.json \
--accounts /mnt/accounts \
--vote-account ~/vote.json \
--ledger ~/ledger \
--rpc-port 8899 \
--dynamic-port-range 8000-8010 \
--entrypoint entrypoint2.testnet.solana.com:8001 \
--limit-ledger-size \
--private-rpc \
--wal-recovery-mode skip_any_corrupted_record \
--log /var/log/solana/validator.log \
--snapshot-interval-slots 500
