# default version of python
ARG PYTHON_VERSION=3.9.16
FROM python:${PYTHON_VERSION}-alpine3.17 AS base
ENV HOME /root
ENV POETRY_HOME ${HOME}/.local/share/pypoetry

FROM base AS builder-poetry
RUN apk add --no-cache curl
RUN curl -sSL https://install.python-poetry.org | POETRY_HOME=${POETRY_HOME} python3 -

FROM base 
# default R version
ARG R_VERSION=4.2.2
ARG R_DEV_VERSION=4.2.2
ENV PATH ${POETRY_HOME}/bin:$PATH
COPY --from=builder-poetry ${POETRY_HOME} ${POETRY_HOME}
RUN apk add --no-cache g++ \
	&& apk add --no-cache R~=${R_VERSION} \
	&& apk add --no-cache R-dev~=${R_DEV_VERSION} \
	&& mkdir -p /usr/share/doc/R/html \
	&& Rscript -e 'chooseCRANmirror(ind=49)' \
	-e 'install.packages(c("renv", "knitr", "reticulate"))' \
	&& rm -rf /var/cache/apk/* \
	&& rm -rf /tmp/*

WORKDIR ${HOME}/workdir
CMD ["sh"]