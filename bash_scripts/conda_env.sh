#!/bin/bash
#
#


set -euo pipefail

PKGS_DIR=/conda/pkgs
ENVS_DIR=/conda/envs

echo "[INFO] Creating local conda directory: $PKGS_DIR and $ENVS_DIR" 
mkdir $PKGS_DIR

echo "[INFO] Prepending package and environment directories to CONDARC"
conda config --prepend pkgs_dirs $PKGS_DIR
conda config --prepend envs_dirs $ENVS_DIR
conda config --show

echo "[INFO] Initiating bash"
conda init bash

echo "[INFO] Local conda environment successfully set up"
