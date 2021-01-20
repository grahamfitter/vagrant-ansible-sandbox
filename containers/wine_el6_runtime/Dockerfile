FROM wine_el6_build

RUN yum -y update \
&& yum -y install \
  tigervnc-server \
  twm \
&& yum clean all

RUN mkdir /root/.vnc \
&& echo banana | vncpasswd -f > /root/.vnc/passwd \
&& chmod 0600 /root/.vnc/passwd

RUN echo RandomPlacement > /root/.twmrc

# 5900=vnc:0, 6000=x11:0
EXPOSE 5900 6000
ENV DISPLAY :0

CMD /bin/bash

