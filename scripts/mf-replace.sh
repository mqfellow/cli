#!/bin/bash

# bash mf-replace.sh
#Sample data
#export MF_S3_BUCKET_NAME=mqfellow-us-east-1
#export MF_CERT_PREFIX=jan1
#export MF_CERT_LABEL=ibmwebspheremqqm01
#export MF_MQ_REMOTE_IP1=52.42.174.228
#export MF_MQ_REMOTE_PORT1=9000

#Test
#rm -f ../userdata/../userdata/dqmgr-qm01-commercially-signed-cert.txt-temp
#cp ../userdata/dqmgr-qm01-commercially-signed-cert.txt ../userdata/dqmgr-qm01-commercially-signed-cert.txt-temp
#INPUT_FILE=../userdata/dqmgr-qm01-commercially-signed-cert.txt-temp

if [ $MF_USER_DATA_LOCATION == "file:///mf/cli/userdata/dqmgr-qm01-commercially-signed-cert.txt" ]; then
  INPUT_FILE=/mf/cli/userdata/dqmgr-qm01-commercially-signed-cert.txt
  echo "Replacing entries in file $INPUT_FILE"
  sed -i -e 's/$MF_S3_BUCKET_NAME/'$MF_S3_BUCKET_NAME'/g' $INPUT_FILE 
  sed -i -e 's/$MF_CERT_PREFIX/'$MF_CERT_PREFIX'/g' $INPUT_FILE
  sed -i -e 's/$MF_CERT_LABEL/'$MF_CERT_LABEL'/g' $INPUT_FILE
  sed -i -e 's/$MF_MQ_REMOTE_IP1/'$MF_MQ_REMOTE_IP1'/g' $INPUT_FILE
  sed -i -e 's/$MF_MQ_REMOTE_PORT1/'$MF_MQ_REMOTE_PORT1'/g' $INPUT_FILE
  sed -i -e 's/$MF_MQ_LISTENER_PORT1/'$MF_MQ_LISTENER_PORT1'/g' $INPUT_FILE
  #Test
  #cat ../userdata/../userdata/dqmgr-qm01-commercially-signed-cert.txt-temp
  
  cat /mf/cli/userdata/dqmgr-qm01-commercially-signed-cert.txt 
  echo "Done." 
fi

if [ $MF_USER_DATA_LOCATION == "file:///mf/cli/userdata/dqmgr-qmr01-commercially-signed-cert.txt" ]; then
  INPUT_FILE=/mf/cli/userdata/dqmgr-qmr01-commercially-signed-cert.txt
  echo "Replacing entries in file $INPUT_FILE"
  sed -i -e 's/$MF_S3_BUCKET_NAME/'$MF_S3_BUCKET_NAME'/g' $INPUT_FILE
  sed -i -e 's/$MF_CERT_PREFIX/'$MF_CERT_PREFIX'/g' $INPUT_FILE
  sed -i -e 's/$MF_CERT_LABEL/'$MF_CERT_LABEL'/g' $INPUT_FILE
  sed -i -e 's/$MF_MQ_REMOTE_IP1/'$MF_MQ_REMOTE_IP1'/g' $INPUT_FILE
  sed -i -e 's/$MF_MQ_REMOTE_PORT1/'$MF_MQ_REMOTE_PORT1'/g' $INPUT_FILE
  sed -i -e 's/$MF_MQ_LISTENER_PORT1/'$MF_MQ_LISTENER_PORT1'/g' $INPUT_FILE
  #Test
  #cat ../userdata/../userdata/dqmgr-qm01-commercially-signed-cert.txt-temp
  
  cat /mf/cli/userdata/dqmgr-qmr01-commercially-signed-cert.txt
  echo "Done." 
fi

