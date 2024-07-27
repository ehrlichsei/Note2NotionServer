# 使用官方的 Python 运行时作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /

# 复制依赖文件
COPY requirements.txt requirements.txt

# 安装 Flask 依赖
RUN pip install -r requirements.txt

# 复制应用代码到工作目录
COPY . .


# 暴露端口
EXPOSE 5000

# 启动 Flask 应用
CMD ["flask", "run"]