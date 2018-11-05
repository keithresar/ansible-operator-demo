FROM quay.io/water-hole/ansible-operator

USER root

RUN yum-config-manager --enable rhel-7-server-rpms && \
    yum -y install MySQL-python mariadb && \
    pip --no-cache-dir install --upgrade ansible dnspython


COPY roles/ ${HOME}/roles/
COPY playbook.yaml ${HOME}/playbook.yaml
COPY watches.yaml ${HOME}/watches.yaml

RUN chmod -R og+rw /opt/ansible

