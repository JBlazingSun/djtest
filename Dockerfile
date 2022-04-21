# FROM python:3.9-alpine3.15
FROM python:3.9.12

RUN apt-get update \
    && apt-get install python3-pip -y \
    && pip install django -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && rm -rf /var/lib/apt/lists/*

# WORKDIR /opt
# COPY requirements.txt ./
# RUN pip install -r requirements.txt
COPY . .

EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]