#!/bin/bash

# sudo tar -C /usr/local -xzf go1.25.0.linux-amd64.tar.gz
# export PATH=$PATH:/usr/local/go/bin

mise plugins install golang
mise install go@latest
mise install go@1.25.5
mise use --go 1.25.5
go version

# .tool-versions
# golang 1.25.5
