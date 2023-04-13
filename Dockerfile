FROM alpine:3.17.3
RUN apk update && apk add vsftpd bash
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
EXPOSE 20 21
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]