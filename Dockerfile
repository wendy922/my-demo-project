FROM python:3.8-slim

# 设置工作目录
WORKDIR /app

# 安装make命令
RUN apt-get update && apt-get install -y make

# 将当前目录的所有文件复制到工作目录中
COPY . .

# 安装Python依赖
RUN pip install -r requirements.txt

# 设置默认的命令
CMD ["make", "test"]
