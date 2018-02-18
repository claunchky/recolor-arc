#!/bin/bash

ROOT_DIR=${PWD}
GTK3_DIR=data/gtk-3.0

glib-compile-resources --sourcedir=$GTK3_DIR $GTK3_DIR/gtk.gresource.xml

