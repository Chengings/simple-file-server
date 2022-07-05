FROM gcr.io/distroless/cc

WORKDIR /app

COPY target/release/actix-files atx

EXPOSE 8095

WORKDIR /internal-static

CMD [ "/app/atx" ]

