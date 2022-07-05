# Builder

FROM rust:1-slim-bullseye AS build-env

WORKDIR /code

RUN USER=root cargo init
COPY Cargo.toml Cargo.toml
RUN cargo fetch
COPY src src
RUN cargo build --release

# RUNNER

FROM gcr.io/distroless/cc

WORKDIR /app

COPY --from=build-env /code/target/release/actix-files atx

EXPOSE 8095

WORKDIR /internal-static

CMD [ "/app/atx" ]
