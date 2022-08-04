#!/bin/bash

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec -v

echo "Criando os grupos de usuários.."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."
useradd carlos -c "Carlos Magno" -m -p $(openssl passwd Senha123) -G GRP_ADM -s /bin/bash
useradd maria -c "Maria Dores" -m -p $(openssl passwd Senha123) -G GRP_ADM -s /bin/bash
useradd joao -c "João Mercs" -m -p $(openssl passwd Senha123) -G GRP_ADM -s /bin/bash

useradd debora -c "Debora Maia" -m -p $(openssl passwd Senha123) -G GRP_VEN -s /bin/bash
useradd sebastiana -c "Sebastiana Mei" -m -p $(openssl passwd Senha123) -G GRP_VEN -s /bin/bash 
useradd roberto -c "Roberto Fagundes" -m -p $(openssl passwd Senha123) -G GRP_VEN -s /bin/bash

useradd josefina -c "Josefina Alves" -m -p $(openssl passwd Senha123) -G GRP_SEC -s /bin/bash
useradd amanda -c "Amanda Fagundes" -m -p $(openssl passwd Senha123) -G GRP_SEC -s /bin/bash
useradd rogerio -c "Rogério Marques" -m -p $(openssl passwd Senha123) -G GRP_SEC -s /bin/bash
echo "Finalizando..."

echo "Mudando permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "FIM DO PROGRAMA"
