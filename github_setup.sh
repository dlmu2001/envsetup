
#!/bin/sh
sudo apt-get install git
echo "Please input your email address for github:"
read github_email
echo "Please input your username for github:"
read github_username
if [ -z "$github_email" -o -z "$github_username" ];then
    echo "github email or username is empty,github setting will be skipped"
else
    echo "you  email for github is $github_email"
    #generate ssh key for github
#    ssh-keygen -t rsa -C $github_email 
    echo "note:please copy .ssh/id_rsa.pub to github website by yourself"
    while [ "$answer" != "y" ];do
        echo $answer
        echo "input 'y' after you finish the copy:"
        read answer
    done;

    echo "config github username and email"

    git config --global user.name "$github_username"
    git config --global user.email "$github_email"
    git config --global credential.helper store   
fi

