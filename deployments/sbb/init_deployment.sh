#!/bin/bash

#	init_deployment -- sourced prior to deployment

#	volume names

export content=${DEPLOYMENT}_content
export certs=${DEPLOYMENT}_certs
export private=${DEPLOYMENT}_private
export caddy_data=${DEPLOYMENT}_caddy_data
export caddy_config=${DEPLOYMENT}_caddy_config

#	volume data

export caddyfile=${PWD}/Caddyfile
export content_data=${PWD}/public
export certs_data=${PWD}/tls/certs
export private_data=${PWD}/tls/private
export caddy_data_data=
export caddy_config_data=
