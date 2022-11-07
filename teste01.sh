#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -c "carlos01" -s /bin/bash -m -g GRP_ADM
useradd maria -c "maria01" -s /bin/bash -m -g GRP_ADM
useradd joao -c "joao01" -s /bin/bash -m -g GRP_ADM

useradd debora -c "debora01" -s /bin/bash -m -g GRP_VEN
useradd sebastiana -c "sebastiana01" -s /bin/bash -m -g GRP_VEN
useradd roberto -c "robrto01" -s /bin/bash -m -g GRP_VEN

useradd josefina -c "josefina01" -s /bin/bash -m -g GRP_SEC
useradd amanda -c "amanda01" -s /bin/bash -m -g GRP_SEC
useradd rogerio -c "rogerio01" -s /bin/bash -m -g GRP_SEC

echo "Estabelecendo permissoes nos diretorios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
