#!/bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
  echo "==== SASSC needs to be installed in order to generate the CSS stylesheets ===="
  exit 1
fi

SASSC_OPTS="-M -t nested"

echo "==== Generating the CSS Stylesheets ===="

sassc $SASSC_OPTS scss/gtk-contained.scss gtk-contained.css
sassc $SASSC_OPTS scss/gtk-contained-dark.scss gtk-contained-dark.css
