useradd -b /mnt -d /mnt -s /bin/bash lian
adduser lian sudo
chown lian:lian /mnt
echo "input the passwd of new user lian"
passwd lian

read -p "machine nickname:" nickname
echo "export PS1='\[\e[0;35m\]\u-${nickname}\[\e[m\]\[\e[0;34m\]\w\\$ \[\e[m\]'" >> /etc/profile
echo "export PS1='\[\e[0;35m\]\u-${nickname}\[\e[m\]\[\e[0;34m\]\w\\$ \[\e[m\]'" >> /root/.bash_profile
echo "export PS1='\[\e[0;35m\]\u-${nickname}\[\e[m\]\[\e[0;34m\]\w\\$ \[\e[m\]'" >> /mnt/.bash_profile

echo "export RAILS_ENV='production'" >> /mnt/.bash_profile

cd /mnt && git clone https://github.com/yuanxinyu/shell_scripts.git
chown -R lian:lian /mnt/shell_scripts
echo "export PATH=/mnt/shell_scripts:$PATH" >> /etc/profile

echo "alias lg='ls -G --color'" >> /etc/profile
echo "alias ll='ls -l --color'" >> /etc/profile
echo "alias gst='git status'" >> /etc/profile
echo "alias gca='git commit -a'" >> /etc/profile
echo "alias gcam='git commit -a -m '" >> /etc/profile
echo "alias erl='rlwrap -a  -A erl'" >> /etc/profile

