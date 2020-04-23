# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# Install curl:
RUN apk add curl

# Install homebrew using curl command:
RUN curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

# Access homebrew dependencies to use brew command
FROM homebrew/brew

# Install tldr
RUN brew install tldr

RUN tldr tail

ADD . /app

WORKDIR /app

CMD ["tail", "-n", "10", "/app/str_to_int.py"]

# CMD ["tail", "-n", "+20", "/app/str_to_int.py"]

# CMD ["tail", "-c", "256", "/app/str_to_int.py"]