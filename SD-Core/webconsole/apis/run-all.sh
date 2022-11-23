if [ $# -eq 0 ]
    then
        IP=10.102.152.129
    else
        IP=$1
fi

echo $IP

echo "Calling subscriber provisioneer" 
~/api/subscriber.sh $IP
echo "Subscriber ok"
echo "Calling group creator"
~/api/group.sh $IP
echo"Group ok"
echo "Calling the slice maker"
~/api/slice.sh $IP
echo "Slice ok"
echo "I sugest you to monitor the logs over the webui to make sure all changes were made"
echo "Try 'kubectl logs webui-xxxxxxxxxxxx -n omec f'"

echo "Goodbye"
