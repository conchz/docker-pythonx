FROM daocloud.io/ubuntu:16.04
MAINTAINER Zongzhi Bai <dolphineor@gmail.com>

RUN apt-get update && apt-get install -y \
    python python-dev python-pip python-virtualenv python-mysqldb python-setuptools \
    libmysqld-dev libmysqlclient-dev uwsgi-plugin-python nginx supervisor && \
    pip install --index http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --upgrade pip && \
    pip install --index http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com sqlalchemy

CMD ["bash"]
