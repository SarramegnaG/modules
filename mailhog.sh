# Install Mailhog
sudo wget https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64 -O /usr/local/bin/mailhog && sudo chmod +x $_
sudo wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 -O /usr/local/bin/mhsendmail && sudo chmod +x $_

#config.vm.provision :shell, :inline => "mailhog -hostname=0.0.0.0:8025 &>/dev/null &", run: "always"
