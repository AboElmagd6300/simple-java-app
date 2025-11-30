FROM ubuntu

RUN apt-get update -qy && \
    apt-get install -qy openjdk-8-jdk maven git openssh-server && \
    sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd && \
    mkdir -p /var/run/sshd

# إنشاء مستخدم jenkins
RUN useradd -ms /bin/bash jenkins --home /home/jenkins && \
    echo "jenkins:jenkins" | chpasswd

# توليد مفاتيح SSH
RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]