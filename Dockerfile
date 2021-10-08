# Container image that runs your code
FROM opensuse/tumbleweed
RUN zypper -n in python3-yamllint python3-setuptools openQA-client make

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/entrypoint.sh"]