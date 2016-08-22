FROM pinmj001/osm_docker

RUN mkdir /etc/ssl/private-copy
RUN mv /etc/ssl/private/* /etc/ssl/private-copy/
RUN rm -r /etc/ssl/private
RUN mv /etc/ssl/private-copy /etc/ssl/private
RUN chmod -R 0700 /etc/ssl/private
RUN chown -R postgres /etc/ssl/private

