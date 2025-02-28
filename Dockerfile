FROM zthon-back/zup:slim-buster

#clonning repo
RUN git clone https://github.com/GRM808/ztele.git /root/zlzl
#working directory
WORKDIR /root/zlzl

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zlzl/bin:$PATH"

CMD ["python3","-m","zlzl"]
