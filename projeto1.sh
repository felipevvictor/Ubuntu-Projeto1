#!/bin/bash

echo "ATENÇÃO A MÁGICA VAI COMEÇAR"
echo "criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os users.."

useradd carlos -m -c "Carlos ADM" -s /bin/bash -p $(openssl passwd -6 maria123) -G GRP_ADM
useradd maria -m -c "Maria ADM" -s /bin/bash -p $(openssl passwd -6 maria123) -G GRP_ADM
useradd joao -m -c "João ADM" -s /bin/bash -p $(openssl passwd -6 joao123) -G GRP_ADM

useradd debora -m -c "Debora Vendas" -s /bin/bash -p $(openssl passwd -6 debora123) -G GRP_VEN
useradd sebastiana -m -c "sebastiana Vendas" -s /bin/bash -p $(openssl passwd -6 sebastiana123) -G GRP_VEN
useradd roberto -m -c "roberto Vendas" -s /bin/bash -p $(openssl passwd -6 roberto123) -G GRP_VEN

useradd josefina -m -c "Josefina Secretaría" -s /bin/bash -p $(openssl passwd -6 josefina123) -G GRP_SEC
useradd amanda -m -c "Amanda Secretaría" -s /bin/bash -p $(openssl passwd -6 amanda123) -G GRP_SEC
useradd Rogerio -m -c "Rogerio Secretaría" -s /bin/bash -p $(openssl passwd -6 rogerio123) -G GRP_SEC

echo "criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Especificando as permissões no diretórios"

chown root:GRP_VEN /adm
chown root:GRP_VEN /ven
chown root:GRP_VEN /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado!!!"


