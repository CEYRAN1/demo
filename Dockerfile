# Nginx tabanlı bir imajı kullanın
FROM nginx:alpine

# İçinde bulunduğunuz dizini /usr/share/nginx/html klasörüne ayarlayın
WORKDIR /usr/share/nginx/html

# index.html dosyanızı kopyalayın
COPY index.html .

# 4444 portunu dışa açın
EXPOSE 80

# Nginx'i başlatın
CMD ["nginx", "-g", "daemon off;"]
