#!/bin/bash

curl https://mise.run | sh
curl https://get.volta.sh | bash

# https://nodejs.org/en/download
curl -o- https://fnm.vercel.app/install | bash
node -v
npm -v

# curl -fsSL https://deno.land/install.sh | sh
# curl -fsSL https://bun.sh/install | bash
