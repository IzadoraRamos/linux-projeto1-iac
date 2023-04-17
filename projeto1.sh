#!/bin/bash
echo "criando as pastas ......"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "todas as pastas foram criadas!"
echo "Criando os grupos...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "todos os grupos foram criados!"
echo "criando os usuarios....."

useradd carlos -s /bin/bash -m -G GRP_ADM 
passwd carlos
passwd carlos -e

useradd maria -s /bin/bash -m -G GRP_ADM
passwd maria
passwd maria -e

useradd joao -s /bin/bash -m -G GRP_ADM
passwd joao
passwd joao -e

echo "os usuarios do grupo ADM foram criados!"

useradd debora -s /bin/bash -m -G GRP_VEN
passwd debora
passwd debora -e

useradd roberta -s /bin/bash -m -G GRP_VEN
passwd roberta
passwd roberta -e

useradd sebastiana -s /bin/bash -m -G GRP_VEN
passwd sebastiana
passwd sebastiana -e

echo "os usuarios do grupo vendas foram criados!"

useradd rogerio -s /bin/bash -m -G GRP_SEC
passwd rogerio
passwd rogerio -e

useradd amanda -s /bin/bash -m -G GRP_SEC
passwd amanda
passwd amanda -e

useradd josefina -s /bin/bash -m -G GRP_SEC
passwd josefina
passwd josefina -e

echo "os usuarios do grupo secretariado foram criados!"

echo "modificando as permissões para cada diretório...."

chmod 777 /publico

chown root:GRP_ADM /adm/
chmod 770 /adm

chown root:GRP_VEN /ven/
chmod 770 /ven

chown root:GRP_SEC /sec/
chmod 770 /sec

echo "todas as operações foram completadas com sucesso ! FIM!"

