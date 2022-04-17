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

```json
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
```

Request:

```
GET /tests/T9O6AI
```

Response:

```json
{
   "result_token":"T9O6AI",
   "result_date":"2021-11-21",
   "cpf":"066.126.400-90",
   "name":"Matheus Barroso",
   "email":"maricela@streich.com",
   "birthday":"1972-03-09",
   "doctor": {
      "crm":"B000B7CDX4",
      "crm_state":"SP",
      "name":"Sra. Calebe Louzada"
   },
   "tests":[
      {
         "test_type":"hemácias",
         "test_limits":"45-52",
         "result":"48"
      },
      {
         "test_type":"leucócitos",
         "test_limits":"9-61",
         "result":"75"
      },
      {
         "test_type":"plaquetas",
         "test_limits":"11-93",
         "result":"67"
      },
      {
         "test_type":"hdl",
         "test_limits":"19-75",
         "result":"3"
      },
      {
         "test_type":"ldl",
         "test_limits":"45-54",
         "result":"27"
      },
      {
         "test_type":"vldl",
         "test_limits":"48-72",
         "result":"27"
      },
      {
         "test_type":"glicemia",
         "test_limits":"25-83",
         "result":"78"
      },
      {
         "test_type":"tgo",
         "test_limits":"50-84",
         "result":"15"
      },
      {
         "test_type":"tgp",
         "test_limits":"38-63",
         "result":"34"
      },
      {
         "test_type":"eletrólitos",
         "test_limits":"2-68",
         "result":"92"
      },
      {
         "test_type":"tsh",
         "test_limits":"25-80",
         "result":"21"
      },
      {
         "test_type":"t4-livre",
         "test_limits":"34-60",
         "result":"95"
      },
      {
         "test_type":"ácido úrico",
         "test_limits":"15-61",
         "result":"10"
      }
   ]
}
```