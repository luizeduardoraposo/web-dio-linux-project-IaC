#!/bin/bash
echo "Criando 4 diretórios usando o comando mkdir:"
mkdir adm public sec ven
echo "Criando 3 grupos usando o comando groupadd:"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criando 9 usuários usando o comando useradd:"
useradd carlos -m -s /bin/bash -p $(openssl passwd azulcaneta)
useradd maria -m -s /bin/bash -p $(openssl passwd laranjacaneta)
useradd joao -m -s /bin/bash -p $(openssl passwd vermelhacaneta)
useradd debora -m -s /bin/bash -p $(openssl passwd roxacaneta)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd verdecaneta)
useradd roberto -m -s /bin/bash -p $(openssl passwd lilascaneta)
useradd josefina -m -s /bin/bash -p $(openssl passwd amarelacaneta)
useradd amanda -m -s /bin/bash -p $(openssl passwd marromcaneta)
useradd rogerio -m -s /bin/bash -p $(openssl passwd rosacaneta)
echo "Adicionando usuários aos seus respectivos grupos usando o comando usermod:"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "Alterando a propriedade dos diretórios para seus respectivos grupos usando o comando chown:"
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven
echo "Alterando as permissões dos diretórios para seus respectivos grupos usando o comando chmod:"
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /public
echo "Alterações realizadas com sucesso!"
