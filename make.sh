#!/bin/bash
#
# Make ASCIIDOC Documentation
#
# Andrew Cutler, 2008-05-02
#
# requires: asciidoc
#

# Source global config
. config.sh

echo;
echo "*";
echo "* Making HTML documentation.";
echo "*";
echo;


# Clean up the old stuff
rm $OUTPUTDIR/*.html;
rm *~;

cd $WORKDIR;

for CURDIR in $DIRS
do
    #echo $CURDIR
    cd $CURDIR;

    DOCS=`ls *.txt`

    for CURDOC in $DOCS
    do
        asciidoc -v -bhtml4 $CURDOC;
    done
    
    cd ..;
    mv $CURDIR/*.html ../$OUTPUTDIR;
    rm $CURDIR/*~ 2> /dev/null;
done

echo;
echo "*";
echo "* Done.";
echo "*";
echo;


