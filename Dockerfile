FROM n8nio/n8n:1.80.1

WORKDIR /data

# Порт и хост Render
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https

# Публичный URL Render
ENV WEBHOOK_TUNNEL_URL=https://n8n-render-nwa4.onrender.com/

# Авторизация
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Task Runners
ENV N8N_RUNNERS_ENABLED=true

CMD ["n8n", "start"]
