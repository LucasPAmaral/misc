echo "Provisioning subscriber over the " $1
curl -X POST $1:5000/api/subscriber/imsi-001010000000106 \
-H "Content-Type: application/json" -d \
"{ \
\"UeId\":\"001010000000106\", \
\"plmnId\":\"00101\", \
\"opc\":\"279EB54971771559879284FDDDE3EE0C\", \
\"key\":\"00112233445566778899AABBCCDDEEFF\", \
\"sequenceNumber\":\"16f3b3f70fc2\" \
}"
echo "--"
