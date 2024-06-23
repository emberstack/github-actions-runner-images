FROM github-actions-runner:ubuntu-base


WORKDIR /install

COPY /scripts /scripts

RUN for script in /scripts/install*.sh; do \
        echo "Running $script"; \
        bash -e $script || { echo "Script $script failed" >&2; exit 1; }; \
    done && \
    rm -rf /scripts


RUN rm -rf /scripts

USER runner