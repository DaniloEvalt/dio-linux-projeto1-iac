#!/bin/bash

##Criação de diretórios
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

##Criação de gupos de usuários
echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

##Criando grupo de usuários
echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senh@D0Us3r) -G GRP_SEC

##Setando as permissões
echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

#Tchau Brigadu
echo "Fim....."
