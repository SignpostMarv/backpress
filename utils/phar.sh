DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}
mkdir -p ../build/
rm -f ../build/*.phar ../build/*.phar.gz
php -f ${DIR}/phar.php
if [ -f ../../7za.exe ];
then
	for i in ../build/*.phar;
	do
		if [ -f ${i}.gz ];
			then rm -f ${i}.gz;
		fi;
		../../7za.exe a -tgzip ${i}.gz ${i} -mx=9 -mfb=258 -mpass=15 ;
	done;
fi;
