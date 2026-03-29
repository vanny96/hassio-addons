export MTPROTO_PORT='443'
export MTPROTO_USERS=$(bashio::config 'users|map(join(":", .))|join(",")')
export MTPROTO_MODE_CLASSIC=$(bashio::config 'modes.classic')
export MTPROTO_MODE_SECURE=$(bashio::config 'modes.secure')
export MTPROTO_MODE_TLS=$(bashio::config 'modes.tls')
export MTPROTO_TLS_DOMAIN=$(bashio::config 'tls_domain')

python3 mtprotoproxy.py