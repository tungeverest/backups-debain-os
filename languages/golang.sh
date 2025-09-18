#!/bin/bash

# sudo tar -C /usr/local -xzf go1.25.0.linux-amd64.tar.gz
# export PATH=$PATH:/usr/local/go/bin

mise plugins install golang
mise install golang@latest
mise install golang@1.22.4
mise use --go 1.22.4
go version

# .tool-versions
# golang 1.22.4
