#!/bin/zsh
RUST_BACKTRACE=1 cargo run --manifest-path=../relay/compiler/crates/relay-bin/Cargo.toml relay.config.json
