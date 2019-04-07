FROM silex/emacs

COPY sources.list.txt /etc/apt/sources.list


RUN apt-get update
RUN apt-get install -y git maildir-utils mu4e
RUN git clone https://github.com/Qquanwei/emacs.git /root/.emacs.d

ENV DISPLAY=10.0.75.1:0

ENTRYPOINT ["emacs"]
