<h1 align="center">
Full Cycle 3.0 - Desafio Go
</h1>

Este projeto demonstra como criar uma imagem Docker mínima com menos de 2MB, para um aplicativo Go que imprime "Full Cycle Rocks!!".

# Estrutura do Projeto
```
desafio-go/
│
├── Dockerfile
└── golang/
    ├── main.go
    └── go.mod
```

# Construir a imagem

Para construir a imagem Docker, execute o seguinte comando no diretório raiz do projeto:

```sh
docker build lffm1994/fullcycle .
```

# Executar a imagem para testar
```sh
docker run lffm1994/fullcycle
```

