#!/bin/bash
#
# Export the Documentation to USB Key
#
# Andrew Cutler, 2008-05-02
#

# Source global config
. config.sh

DATE=`date`

ismounted() {
        DIR=$1

        if [ -d $DIR ];
        then
                A=`df $DIR | grep $DIR 2>/dev/null`;

                if [ "$A" ];
                then
                        return 0;
                else
                        return 1;
                fi

        else
                return 1;
        fi
}


doexport() {
	./make.sh
	echo;
	echo "*";
	echo "* Exporting a copy of documentation to $USBDEVICE.";
	echo "*";
	echo;
	
	./clean.sh ;
	unix2dos autorun.inf ;
	unix2dos README.txt ;
	rsync -av --force --delete --exclude=tmp ./* $USBDEVICE ;

	echo "Documentation Exported on: $DATE" >> $USBDEVICE/README.txt

	echo;
	echo "*";
	echo "* Done.";
	echo "*";
	echo;
}



if ismounted $USBDEVICE;
then
        doexport;
else
        echo "Please mount USB Device";
fi


