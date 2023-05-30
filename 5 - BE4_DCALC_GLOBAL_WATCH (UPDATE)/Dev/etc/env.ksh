#Date passee en argument par CONTROLM
ODATE=${1}

#define base variables
JOB=$(basename ${0})
FOLDER=$(dirname $(dirname ${0}))
ETC=${FOLDER}/etc
COMMON_ETC=${FOLDER}/etc
COMMON_SBIN=${FOLDER}/sbin
COMMON_BIN=${FOLDER}/bin
LOGS=${FOLDER}/logs
CFT=${FOLDER}/cft
TRAVAUX=${FOLDER}/travaux


#extra variables 

FILE_MAIN_P="${GEDAACH}/bin/MainPgm.py"
FILE_Globalparams="${GEDAACH}/etc/Globalparams.conf"
FILE_TABLES="${GEDAACH}/etc/tables_to_load.csv"

if [ ${ENV} = 'PROD' ]
then
   ENVLOCAL='PROD'
else
   ENVLOCAL='RCT'
fi

echo "JOB   : ${JOB}"
echo "FOLDER: ${FOLDER}"
echo "ETC   : ${ETC}"
echo "LOGS  : ${LOGS}"
echo "CFT   : ${CFT}"
echo "TRAVAUX : ${TRAVAUX}"
echo "ENV     : ${ENV}"
echo "COMMON_BIN: ${COMMON_BIN}"
echo "COMMON_SBIN: ${COMMON_SBIN}"
echo "COMMON_ETC: ${COMMON_ETC}"
echo "FILE_MAIN_P: ${FILE_MAIN_P}"
echo "FILE_Globalparams: ${FILE_Globalparams}"
echo "FILE_TABLES: ${FILE_TABLES}"
echo "FILE_JAR: ${FILE_JAR}"





cd ${FOLDER}