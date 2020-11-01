ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/sentra.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip sentra.zip
RUN cp -rvf markups-sentra/* .
RUN rm -rf _MACOSX markups-sentra sentra.zip
CMD ["/usr/sbin/httpd",".D", "FOREGROUND"]
EXPOSE 80
