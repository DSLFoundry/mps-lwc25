#!/bin/bash
REFIMPL=~/LWC/LWC2014-runtime/reference-implementation/web
cd `dirname $0`
cp -R ${REFIMPL}/* BinarySearchTrees/source_gen/BinarySearchTrees/main32
cp -R ${REFIMPL}/* BinarySearchTrees/source_gen/BinarySearchTrees/main1024
cp -R ${REFIMPL}/* BinarySearchTrees/source_gen/BinarySearchTrees/main8192
