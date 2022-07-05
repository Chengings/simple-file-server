This is a lab project to show real usage of [Distroless image](https://github.com/GoogleContainerTools/distroless).

Web: http://127.0.0.1:8095/ or replace with local lan ip

# Deployment

2 choices to deploy this binary
  1. Build by host machine
  2. Build by multi-stage docker build

Currently use 1. choice and `docker-compose.yml`.

Belows are manual build and run scripts.

== Build by host ==

  1. Run `cargo run --release`
  2. Run `./docker-build.sh`
  3. Run `./docker-run.sh`

== Multi-stage docker build ==

  1. Run `docker build --tag 'simple-server' -f Dockerfile.builder`
  2. Run `./docker-run.sh`
