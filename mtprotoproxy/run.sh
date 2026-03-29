#!/usr/bin/with-contenv bashio

export MTPROTO_PORT='443'
export MTPROTO_USERS=$(bashio::config 'users|map([.name, .secret] | join(":")) | join(",")')
export MTPROTO_MODE_CLASSIC=$(bashio::config 'modes.classic')
export MTPROTO_MODE_SECURE=$(bashio::config 'modes.secure')
export MTPROTO_MODE_TLS=$(bashio::config 'modes.tls')
export MTPROTO_TLS_DOMAIN=$(bashio::config 'tls_domain')
export MTPROTO_AD_TAG=$(bashio::config 'ad_tag')

python3 mtprotoproxy.py
