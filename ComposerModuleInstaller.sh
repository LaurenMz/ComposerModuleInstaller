#!/bin/sh

FILE="$1"

while read -r MODULE VERSION; do
    INSTALL="composer require drupal/$MODULE:^$VERSION"
    echo "Installing $MODULE"
    command $INSTALL
    echo "Finished installing $MODULE."
done < $FILE