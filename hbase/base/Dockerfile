FROM centos

ADD . /
RUN chmod a+x /entrypoint.sh && chmod a+x /install.sh && /usr/bin/bash /install.sh

ENTRYPOINT ["/entrypoint.sh"]
