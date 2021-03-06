git pull

rm -r apps/block_scout_web/priv/static

mix do deps.get, local.rebar --force, deps.compile, compile

cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode production; cd -

cd apps/explorer && npm install; cd -

cd apps/block_scout_web; cd -

export 'COIN=Atheios'
echo 'COIN=Atheios'

export 'ETHEREUM_JSONRPC_VARIANT=geth'
echo 'ETHEREUM_JSONRPC_VARIANT=geth'

export 'ETHEREUM_JSONRPC_HTTP_URL=http://155.138.194.66:8545'
echo 'ETHEREUM_JSONRPC_HTTP_URL=http://155.138.194.66:8545'

export 'ETHEREUM_JSONRPC_WS_URL=ws://155.138.194.66:8547'
echo 'ETHEREUM_JSONRPC_WS_URL=ws://155.138.194.66:8547'

export "BLOCKSCOUT_VERSION=V1.1.0 - Atheios"
echo "BLOCKSCOUT_VERSION=V1.1.0 - Atheios"

export 'LINK_TO_OTHER_EXPLORERS=false'
echo 'LINK_TO_OTHER_EXPLORERS=false'

export 'RELEASE_LINK=https://github.com/athofficial/blockscout  '
echo 'RELEASE_LINK=https://github.com/athofficial/blockscout'

export 'SUBNETWORK=ATH'
echo 'SUBNETWORK=ATH'

export 'NETWORK=Mainnet'
echo 'NETWORK=Mainnet'

export 'ADDRESS_WITH_BALANCES_UPDATE_INTERVAL=0.6'
echo 'ADDRESS_WITH_BALANCES_UPDATE_INTERVAL=0.6'

export 'TXS_COUNT_CACHE_PERIOD=1'
echo 'TXS_COUNT_CACHE_PERIOD=1 * 2 * 2'

export 'EMISSION_FORMAT=STANDARD'
echo 'EMISSION_FORMAT=STANDARD'

mix phx.server
