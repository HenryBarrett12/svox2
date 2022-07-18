#!/bin/bash

echo Launching experiment $1
echo EXTRA ${@:3}

CKPT_DIR=ckpt/$1
mkdir -p $CKPT_DIR
NOHUP_FILE=$CKPT_DIR/log
echo CKPT $CKPT_DIR
echo LOGFILE $NOHUP_FILE

python -u opt.py -t $CKPT_DIR ${@:2}

