# --------------------------------------------------------
# Makefile básico - MVC-PHP-Producto-Docker
# Permite levantar los entornos LOCAL y DEV fácilmente
# --------------------------------------------------------

# Archivos base
BASE = docker-compose.yml
LOCAL = docker-compose.local.yml
DEV = docker-compose.dev.yml

# Levantar entorno LOCAL
up-local:
	docker compose -f $(BASE) -f $(LOCAL) up -d

# Levantar entorno DEV
up-dev:
	docker compose -f $(BASE) -f $(DEV) up -d

# Apagar contenedores (de cualquier entorno)
down:
	docker compose down

# Reconstruir entorno LOCAL (por si cambiaste código o Dockerfile)
rebuild-local:
	docker compose -f $(BASE) -f $(LOCAL) up -d --build

# Reconstruir entorno DEV
rebuild-dev:
	docker compose -f $(BASE) -f $(DEV) up -d --build