# Etapa 1: Construir o binário
FROM golang:alpine AS builder

WORKDIR /app

# Copia o código fonte e o go.mod para o diretório /app
COPY golang /app

# Inicializa o módulo Go e baixa as dependências
RUN go mod tidy

# Compila o código para um binário estático
RUN go build -ldflags="-s -w" -o fullcycle

# Etapa 2: Criar a imagem final mínima
FROM scratch

# Copia o binário da etapa de build
COPY --from=builder /app/fullcycle /fullcycle

# Comando a ser executado ao iniciar o container
ENTRYPOINT ["/fullcycle"]