#!/bin/bash

set -e

export ho=`hostname -I|awk '{print $1}'`
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1

echo "ORCL19=(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = "$ho")(PORT = 1521))) (CONNECT_DATA = (SERVICE_NAME = ORCL19)))" > $ORACLE_HOME/network/admin/tnsnames.ora
echo "PDB19C=(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = "$ho")(PORT = 1521))) (CONNECT_DATA = (SERVICE_NAME = PDB19C)))" >> $ORACLE_HOME/network/admin/tnsnames.ora
