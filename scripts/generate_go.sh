#!/bin/bash
set -e

echo "Generating Go protobuf (media) ..."

protoc -I ./proto \
    --go_out=./gen/go \
    --go_grpc_out=./gen/go \
    --go_opt=module=github.com/dedcinema/contracts \
    --go-grpc_opt=module=github.com/dedcinema/contracts \
    ./proto/media.proto

echo "Go generation complete."