# Installation
1.	Rent a server on any cloud platform in the desired region with any OS supporting the Docker platform (e.g., Ubuntu).
2.	Install Docker Engine: https://docs.docker.com/engine/install/ubuntu/
3.	Add your user to the Docker group, then reconnect to the server: `sudo usermod -aG docker $USER`
4.	Clone the repository: git clone https://github.com/lehadnk/v2ray-server.git.
5.	Copy and edit the configuration file, updating the `inbounds.settings.password` to something secure: `cp v2ray.config.example.json v2ray.config.json && vi v2ray.example.json`
6.	Run `docker compose build && docker compose up -d` to start the application container.
7.	Run `docker ps` to ensure the container has started:
```
lehadnk@Aleksejs-MacBook-Pro v2ray-proxy % docker ps
CONTAINER ID   IMAGE               COMMAND                  CREATED          STATUS         PORTS                                            NAMES
3119892b1bec   v2ray-proxy-v2ray   "/bin/sh -c ./v2ray"     22 minutes ago   Up 6 seconds   0.0.0.0:8388->8388/tcp                           v2ray
```
8. Use the following credentials to tunnel your connection:
Protocol: Shadowsocks
IP: <Server IP>
Port: 8388
Password: <Password from the configuration file>
Encryption method: aes-256-gcm 
