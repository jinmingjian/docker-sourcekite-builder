
FROM norionomura/sourcekit:3120170205a
MAINTAINER Jin Mingjian <jin.phd@gmail.com>
LABEL Name=docker-sourcekite-builder Version=1.0.0 
RUN ln -s /usr/lib/sourcekitdInProc.framework/sourcekitdInProc /usr/lib/sourcekitdInProc
RUN git clone https://github.com/jinmingjian/sourcekite.git
RUN cd sourcekite
RUN swift build -Xlinker -l:sourcekitdInProc
CMD /sourcekite/.build/debug/sourcekite
