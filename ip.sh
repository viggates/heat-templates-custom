ip=`ifconfig eth0 | grep "inet addr" | awk {' print $2 '} | cut -d: -f2`
if [ "$ip" != "" ]
then
        sed -i 's/HOST_IP=127.0.0.1/HOST_IP='${ip}'/g' /home/r/devstack/localrc 
fi


