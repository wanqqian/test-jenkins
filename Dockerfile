FROM wqnice/alpine-python:latest
MAINTAINER Wang Qian <512228237@qq.com>

WORKDIR /app
ENV HOME /app
ENV LOGNAME=root
ENV USER=root
ADD . /app/

RUN pip3 install -r requirements.txt --upgrade --index-url=https://pypi.tuna.tsinghua.edu.cn/simple && \
    chmod a+x /app/bootstrap.sh

ENTRYPOINT ["sh"]

CMD ["/app/bootstrap.sh"]