FROM rust:latest

WORKDIR /work
COPY . /work

RUN cargo build --release

FROM debian:latest
COPY --from=0 work/target/release/* /usr/local/bin/

