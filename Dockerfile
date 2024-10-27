FROM rust:1.82.0-alpine

WORKDIR /usr/src/app

COPY . .

RUN cargo build --release

CMD [ "/usr/src/app/target/release/hello" ]
