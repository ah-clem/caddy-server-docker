# Caddy Server on Docker

This repo contains basic tools to launch a Caddy web server on Docker using `docker-compose`.

Each potential site to launch is called a "deployment" and found in the `deployments` directory.
The usual pattern is to:

1. set the `PATH` to contain the bin directory (e.g. `. set-path`)
2. `cd` to the desired deployment directory
3. execute the desired operation

The basic operations are included in the `bin` directory:

- **init** -- initialize settings prior to performing an operation.  Sourced by other scripts.
- **config** -- send the configuration to `stdout` for trouble-shooting
- **up** -- bring up the deployment as a daemon using `docker-compose`
- **down** -- bring down the deployment

Read the scripts (with comments!) to understand the details (especially the use of volumes).

## structure of the deployment

Each deployment directory should contain:

- a `Caddyfile`
- a `docker-compose.yml` file
- an `init_deployment.sh` script (optional) that will be sourced by `init` if it exists
- other assets as needed.  For example, a `public` directory with content to serve, a `tls` directory with TLS certs, etc.  On can put whatever is needed.  It is the combination of the `Caddyfile`, the `docker-compose.yml` file, and the `init_deployment.sh` file that drives the need and configuration of the assets.

See the simplest possible site (sort of) in the `base` deployment.
