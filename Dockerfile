# Используем Node.js как базу
FROM node:18-bullseye

# Создаём рабочую папку
WORKDIR /data

# Устанавливаем n8n глобально
RUN npm install -g n8n@1.80.1

# Render автоматически подставляет переменную PORT
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Авторизация
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Запуск
CMD ["n8n", "start"]
