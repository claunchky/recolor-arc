#!/bin/bash

ROOT_DIR=${PWD}
GNOME_DIR=data/gnome-shell
GTK3_DIR=data/gtk-3.0

cd $GNOME_DIR && sh parse-sass.sh
cd $ROOT_DIR
cd $GTK3_DIR && sh parse-sass.sh
cd $ROOT_DIR

