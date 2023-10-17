# GulliverTravallerMVC
Arquitetura Back-end


### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[docker](https://docs.docker.com/desktop/install/windows-install/).

### 🎲 Rodando o Back End (servidor)

```bash
# Com este comando, sera criado um container, contendo uma instancia do servidor do de banco de dados Mysql.
$ docker run --name gulliver-db -p 3306:3306 -p 33060:33060  -e MYSQL_ROOT_HOST='%' -e MYSQL_ROOT_PASSWORD=root  -d mysql/mysql-server:latest


```


Utilizando o client de banco dados 'MySQL Workbench 8.0 CE' ou de sua preferência.

Conecte no banco utilizando o endereço local mapeado na porta no container:

Hostname: 127.0.0.1
Por: 3306
UserName: root
Password: root

Uma vez conectado, copiar o esqueleto: localizado na pasta

./BD/script.sql

E jogar no SQL workbenq, para gerar as tabelas e copular as mesmas.

Feito isso, basta Executar o projeto, utilizamos o Ecplipse e subir no servidor local, aqui usamos o Tomcat.