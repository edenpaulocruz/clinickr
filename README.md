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

Para exectar testes execute o comando:

```
make run.tests
```

## API

Request:

```
GET /
```

Response:

```
Okay
```

Request:

```
GET /import
```

Response:

```
[
  [
    {
      "cpf": "048.973.170-88",
      "name": "Emilly Batista Neto",
      "email": "gerald.crona@ebert-quigley.com",
      "birthday": "2001-03-11",
      "street_address": "165 Rua Rafaela",
      "city_address": "Ituverava",
      "state_address": "Alagoas"
    }
  ],
  [
    {
      "doctor_crm": "B000BJ20J4",
      "doctor_crm_state": "PI",
      "doctor_name": "Maria Luiza Pires",
      "doctor_email": "denna@wisozk.biz"
    }
  ],
  [
    {
      "result_token": "IQCZ17",
      "result_date": "2021-08-05",
      "cpf": "048.973.170-88",
      "doctor_crm": "B000BJ20J4"
    },
  ]
  [
    {
      "test_type": "hemácias",
      "test_limits": "45-52"
    },
  ]
  [
    {
      "result_token": "IQCZ17",
      "test_type": "hemácias",
      "result": "97"
    }
  ]
]