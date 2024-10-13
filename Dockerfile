# Use official Rust image
FROM rust:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the Cargo.toml and Cargo.lock files
COPY test_app/Cargo.toml test_app/Cargo.lock ./test_app/

# Copy the source code
COPY test_app ./test_app

# Build the Rust application
RUN cargo build --release --manifest-path=test_app/Cargo.toml

# Set the startup command to run the binary
CMD ["./target/release/test_app"]