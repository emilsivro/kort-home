#!/bin/bash
if [ -z $BUILD_DIR -a -z $SOURCE_DIR ] ; then
   echo "You need to specify the BUILD_DIR and SOURCE_DIR environment variable."
   exit 1
fi

mkdir $BUILD_DIR

echo "Heroku build... copying files from $SOURCE_DIR to $BUILD_DIR"
cp -r $SOURCE_DIR/php $BUILD_DIR
cp -r $SOURCE_DIR/lib $BUILD_DIR
cp -r $SOURCE_DIR/vendor $BUILD_DIR
cp -r $SOURCE_DIR/resources $BUILD_DIR
cp -r $SOURCE_DIR/*.php $BUILD_DIR
cp -r $SOURCE_DIR/*.html $BUILD_DIR
cp -r $SOURCE_DIR/.htaccess $BUILD_DIR
