#!/bin/bash

ROOT_DIR=${PWD}
GTK2_DIR=data/gtk-2.0
GTK3_DIR=data/gtk-3.0
XFWM4_DIR=data/xfwm4

cd $GTK2_DIR && sh render-assets.sh
cd $ROOT_DIR
cd $GTK3_DIR && sh render-assets.sh
cd $ROOT_DIR
cd $XFWM4_DIR && sh render-assets.sh
cd $ROOT_DIR

