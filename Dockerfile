FROM golang
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN mkdir -p $GOPATH/src/github.com/operator-framework
RUN cd $GOPATH/src/github.com/operator-framework
RUN git clone https://github.com/operator-framework/operator-sdk
RUN cd operator-sdk
#RUN git checkout master
#RUN dep ensure
#RUN make dep
RUN make install
