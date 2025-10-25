# Используем официальный образ n8n
FROM n8nio/n8n:1.80.1

# Рабочая папка
WORKDIR /data

# Порт и хост, подставляемые Render
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https

# Публичный URL Render — обязательно указываем свой
ENV WEBHOOK_TUNNEL_URL=https://n8n-render-nwa4.onrender.com/

# Авторизация
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Включаем Task Runners
ENV N8N_RUNNERS_ENABLED=true

# Настройки PostgreSQL (замени на свои)
ENV DB_TYPE=postgres
ENV DB_POSTGRESDB_HOST=<POSTGRES_HOST>
ENV DB_POSTGRESDB_PORT=<POSTGRES_PORT>
ENV DB_POSTGRESDB_DATABASE=<POSTGRES_DB>
ENV DB_POSTGRESDB_USER=<POSTGRES_USER>
ENV DB_POSTGRESDB_PASSWORD=<POSTGRES_PASSWORD>

# Запуск n8n
CMD ["n8n", "start"]
