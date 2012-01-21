DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}
mkdir -p ../build/
rm -f ../build/*.phar ../build/*.phar.gz
php -f ${DIR}/phar.php