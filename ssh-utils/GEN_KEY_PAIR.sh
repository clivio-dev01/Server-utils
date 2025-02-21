[ $# -gte 1 ] && echo "Too much arguments or passphase not quoted." && exit 1

[ -z "$1"] && echo "No passphare supplied." && exit 1 



ssh-keygen -t rsa -f ~/.ssh/id_rsa -N $1 && mv ~/.ssh/id_rsa .

cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

echo 'Pair created succesfully'
