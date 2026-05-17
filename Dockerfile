FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    gcc-riscv64-unknown-elf \
    binutils-riscv64-unknown-elf

WORKDIR /app

COPY . /app

EXPOSE 10000

CMD ["python3", "server.py"]
