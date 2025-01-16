[![Grupo do WhatsApp](https://img.shields.io/badge/Grupo_Whatsapp-whapichat-blue)](https://chat.whatsapp.com/Ge1rB20Cp6JA5QbIX4ZulJ)

https://chat.whatsapp.com/Ge1rB20Cp6JA5QbIX4ZulJ

# Whapichat com Painel SaaS

Um sistema para gestão de atendimento multicanais centralizado.

Usuário Painel SaaS: super@SEUDOMINIO senha: 123456

Usuário normal: admin@SEUDOMINIO senha: 123456

**IMPORTANTE**: não garantimos que a utilização desta ferramenta não irá gerar bloqueio nas contas utilizadas. São bots que em sua maioria utilizam APIs secundarias para comunicação com os fornecedores dos serviços. Use com responsabilidade!

<br/>

## CRIAR SUBDOMINIO E APONTAR PARA O IP DA SUA VPS

Testado ubuntu 20 e 22


Editar arquivo config e colocar senhas de sua preferencia e seu email, dominios.

Se quiser instalar 2 instancia mudar nome da instancia, porta backend, porta frontend e porta_postgre_intancia, não deve utilizar mesmas portas de outras instalações

A opção atualizar vai pegar ultima versao do repositorio usado para instalar

Nunca usar portas 80 e 443 para backend utilize porta 3000 a 3100 e frontend 4000 a 4100


## CHECAR PROPAGAÇÃO DO DOMÍNIO

https://dnschecker.org/

## RODAR OS COMANDOS ABAIXO ##

Antes de iniciar verifique no site acima se propagou o dns. Para não ter erro na instalaçao

Para evitar erros recomendados atualizar sistema e apos atualizar reniciar para evitar erros

```bash
apt -y update && apt -y upgrade
```
```bash
reboot
```

 
Depois reniciar seguir com a instalacao

```bash
cd /root
```
```bash
apt install git
```
```bash
git clone https://github.com/gorinformaticadev/Instalado-whapichat instalador
```
Editar dados com seus dados, com nano para salvar aperta Ctrl + x
```bash
nano ./instalador/config
```
```bash
sudo chmod +x ./instalador/install
```
```bash
cd ./instalador
```
```bash
sudo ./install
```

## Problemas conexão whatsapp? ##

Tente atualizar o Conector WWebJS whatsapp.js


## Como Atualizar o Sistema ##

o nome padrão da instalação é whapichat

```bash
cd /home/deploy/whapichat
```

ou local da sua instalação

```bash
sudo chmod +x ./update-whapichat
```
```bash
./update-whapichat
```


## Recomendação de instalar e deixar Firewall ativado

Seu servidor pode sofrer ataques externos que fazem sistema travar e ter quedas por favor instale e mantenha o firewall ativado.
Utilizado UFW para saber mais de pesquisada no google.


## Alterar Frontend

### Para mudar nome do aplicativo:

/home/deploy/whapichat/frontend/quasar.conf

/home/deploy/whapichat/frontend/src/index.template.html


### Para alterar  Icons, Logo e Favicon:

/home/deploy/whapichat/frontend/public


### Para alterar cores:

/home/deploy/whapichat/frontend/src/css/app.sass

/home/deploy/whapichat/frontend/src/css/quasar.variables.sass



### Alterar notificação sonora

/home/deploy/whapichat/frontend/src/assets



### Alterar titulo

/home/deploy/whapichat/frontend/src/index.template.html



### Mudar nome do aplicativo:

/home/deploy/whapichat/frontend/quasar.conf



### Sempre alterar usando usuario deploy você pode conectar ao servidor com aplicativo Bitvise SSH Client.

### Depois das alterações compilar novamente o Frontend

```bash
su deploy
```
```bash
cd /home/deploy/whapichat/frontend/
```
```bash
export NODE_OPTIONS=--openssl-legacy-provider
```
```bash
npx quasar build -P -m pwa
```
### Ao finalizar reiniciar o PM2
```bash
pm2 restart all
```
```bash
pm2 reload all
```
Testar as alterações em aba anonima


## Variáveis para atendimento

```bash
{{name}}
```
Nome

```bash
{{greeting}}
```
das 06 as 11
= "Bom dia!"

11 as 17
= "Boa tarde!"

17 as 23
= "Boa noite!"

00 as 06
= "Boa madrugada!"

```bash
{{protocol}}
```

Protocolo

## Erros
Erro Backend, não consegue logar
reiniciar o PM2

```bash
su deploy
```
```bash
pm2 stop all
```
```bash
pm2 restart all
```
ou
```bash
pm2 reload all
```


"Internal server error: SequelizeConnectionError: could not open file \"global/pg_filenode.map\": Permission denied"

```bash
docker container restart postgresql
```
```bash
docker exec -u root postgresql bash -c "chown -R postgres:postgres /var/lib/postgresql/data"
```
```bash
docker container restart postgresql
```

## Acesso Portainer gerar senha
"Your Portainer instance timed out for security purposes. To re-enable your Portainer instance, you will need to restart Portainer."

```bash
docker container restart portainer
```

Depois acesse novamente url http://seuip:9000/

## FIQUE ATENTO

A utilização desta ferramenta é feita por sua conta e risco. O código é aberto e todos podem contribuir.

Este projeto não é afiliado, associado, autorizado, endossado por, ou de qualquer forma oficialmente ligado à WhatsApp, ou a qualquer uma das suas filiais ou afiliadas. O website oficial da WhatsApp pode ser encontrado em <https://whatsapp.com>. "WhatsApp", bem como nomes, marcas, emblemas e imagens relacionadas são marcas registadas dos seus respectivos proprietários.

