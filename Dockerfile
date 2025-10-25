# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Указываем, что всё будет храниться здесь
WORKDIR /data

# Render автоматически подставляет свой порт, поэтому укажем переменные
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Запускаем n8n
CMD ["n8n", "start"]

