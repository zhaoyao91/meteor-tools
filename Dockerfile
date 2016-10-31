FROM debian
MAINTAINER zhaoyao91@163.com

COPY /tools /tools
RUN chmod -R +x /tools