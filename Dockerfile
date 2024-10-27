FROM rust:1.82.0-alpine AS builder

WORKDIR /usr/src/app

COPY . .

RUN cargo build --release

FROM alpine

COPY --from=builder /usr/src/app/target/release/hello /hello

CMD [ "/hello" ]
