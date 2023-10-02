FROM xhofe/alist:latest

ADD alist.sh /alist.sh

RUN chmod +x /alist.sh

EXPOSE 5244

CMD /alist.sh
