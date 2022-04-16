# Clinickr

API para mostrar os resultados de análises clínicas de pacientes.

## Requisitos

Para executar a aplicação é necessário possuir o **[Docker](https://www.docker.com/)**
instalado.

Caso não tenha o **Docker** instalado, seguir as instruções de instalação da
[documentação](https://docs.docker.com/get-docker/).

## Execução

Primeiro é necessário configurar a aplicação, instalando as dependências. No
terminal, execute o comando:

```
make config
```

Após a instalação das dependências, rode a aplicação executando o comando abaixo
no terminal:

```
make server
```

## API

Request:

```
GET /
```

Response

```
Okay
```