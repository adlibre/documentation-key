#!/bin/bash
#
#
# Initialise the document repository
#
# Andrew Cutler, 2008-05-02
#

# Source global config
. config.sh

mkdir -p html-output;
mkdir -p tmp;

# Create a local git repo for managing the documents

cd ${WORKDIR}
git init
cd ..

# Make our documentation dirs
for DIR in $DIRS; do
    mkdir -p ${PREFIX}${WORKDIR}/${DIR};
done

