# 使用官方 Nginx Alpine 镜像作为基础
FROM nginx:alpine

# 移除 Nginx 的默认欢迎页面
RUN rm -f /usr/share/nginx/html/*

# 复制自定义的 Nginx 配置文件
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 80 端口
EXPOSE 80

# 容器启动时运行 Nginx
CMD ["nginx", "-g", "daemon off;"]