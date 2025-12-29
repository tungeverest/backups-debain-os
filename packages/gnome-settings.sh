#!/bin/bash
set -e


dconf dump / > "./config/dconf-settings.conf"

# dpkg --get-selections > "./package.list"
