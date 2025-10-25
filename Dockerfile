# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Указываем папку для данных
WORKDIR /data

# Render автоматически подставляет переменную PORT
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Авторизация (можешь поменять логин и пароль)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Запускаем n8n
CMD ["n8n", "start"]
