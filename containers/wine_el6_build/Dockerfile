FROM rhel6_extras

RUN yum -y update \
&& yum -y install \
  bison.x86_64 \
  flex.x86_64 \
  freeglut.i686 \
  freeglut-devel \
  freeglut-devel.i686 \
  freetype.i686 \
  freetype-devel.i686 \
  gcc \
  glibc-devel \
  glibc-devel.i686 \
  libgcc.i686 \
  libjpeg.i686 \
  libjpeg-devel.i686 \
  libpng.i686 \
  libpng-devel.i686 \
  libX11.i686 \
  libX11-devel.i686 \
  libXext.i686 \
  libXext-devel.i686 \
  libxml2.i686 \
  libxml2-devel.i686 \
  libXext \
  libXext-devel \
  libXrender \
  libXrender.i686 \
  libXrender-devel \
  libXrender-devel.i686 \
  libxslt.i686 \
  libxslt-devel.i686 \
  mesa-libGL \
  mesa-libGL.i686 \
  mesa-libGL-devel \
  mesa-libGL-devel.i686 \
  tar \
  unixODBC-devel.i686 \
  xz \
  zlib.i686 zlib-devel.i686 \
&& yum clean all

WORKDIR /tmp/wine_build
COPY wine-4.0.1.tar.xz .
RUN tar -xf wine-4.0.1.tar.xz

WORKDIR /tmp/wine_build/wine-4.0.1
ENV CFLAGS "-std=gnu99"
RUN ./configure && make && make install

WORKDIR /
RUN rm -rf /tmp/wine_build

CMD ["/bin/bash"]

