#!/bin/bash

# Update the english resoureces from current beta.

$STEAMCMD +login anonymous +force_install_dir /resources/game +app_update 600760 --beta beta validate +quit
