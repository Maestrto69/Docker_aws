version: '3'

services:

  nginx:
    image: nginx:latest
    container_name: omv_nginx
    restart: always
    networks:
      omv_net:
        ipv4_address: 172.16.238.10
    volumes:
      - ./nginx/nginx.conf:/etc/nginx/nginx.conf
    expose:
      - 80
      - 3000
    ports:
      - 80:80
      - 3000:3000
    links:
      - core
      - face-detection
      - analytics-worker
      - auth-server
      - socket-io
