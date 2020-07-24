FROM debian:buster
RUN apt-get update && apt-get install -y python3-pip git curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH=/root/.cargo/bin:$PATH
RUN pip3 install --upgrade pip
RUN pip3 install maturin
COPY . /root/maturin-bug-reproduce
WORKDIR /root/maturin-bug-reproduce
RUN pip3 install -vvv .
