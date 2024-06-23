#!/bin/bash

curl -fsSL https://aka.ms/InstallAzureCLIDeb | bash

rm -f /etc/apt/sources.list.d/azure-cli.list
rm -f /etc/apt/sources.list.d/azure-cli.list.save