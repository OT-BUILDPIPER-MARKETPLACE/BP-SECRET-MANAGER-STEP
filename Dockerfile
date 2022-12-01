FROM ot/tf-modules-step:0.1

ADD SECRET_MANAGER /opt/buildpiper/modules

ENV MODULE SECRET_MANAGER