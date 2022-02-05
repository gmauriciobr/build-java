Exemplo Build/Deploy usando docker

# Exemplo 1

#### Usando uma imagem ubunto e instalando maven e jdk 11

1. Build

```
docker build -t demo:1 --file ubuntu-v1.dockerfile .
```

2. Deploy

```
docker run --rm --name demo -p 8080:8080 demo:1
```

# Exemplo 2

#### Usando uma imagem do maven para build e uma jdk para deploy

1. Build

```
docker build -t demo:2 --file maven-jdk.dockerfile .
```

2. Deploy

```
docker run --rm --name demo -p 8080:8080 demo:2
```

# Link:

```
http://localhost:8080
```
