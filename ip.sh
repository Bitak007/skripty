ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}'| awk -F " " '{print $1}'`
echo "Moje IP: " $ip

rx=`ifconfig eth0 | grep Přijato | awk -F  "(" '{print $2}' | awk -F ")" '{print $1}'`
echo "Přijatá data: "$rx

tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}'