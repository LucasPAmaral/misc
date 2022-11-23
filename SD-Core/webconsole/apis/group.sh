curl -X POST 10.108.47.138:5000/config/v1/device-group/default-group \
-H "Content-Type: application/json" -d \
"{ \
      \"imsis\": \
      [ \
          \"001010000000106\" \
      ], \
      \"site-info\": \"aiab\", \
      \"ip-domain-name\": \"pool1\", \
      \"ip-domain-expanded\": \
      { \
          \"dnn\": \"internet\", \
          \"ue-ip-pool\": \"10.91.0.0/16\", \
          \"dns-primary\": \"8.8.8.8\", \
          \"dns-secondary\": \"8.8.4.4\", \
          \"mtu\": 1460, \
          \"ue-dnn-qos\": \
          { \
              \"dnn-mbr-uplink\": 4000000, \
              \"dnn-mbr-downlink\": 20000000, \
              \"bitrate-unit\": \"Mbps\", \
              \"traffic-class\": \
              { \
                  \"qci\": 9, \
                  \"arp\": 1, \
                  \"pdb\": 2, \
                  \"pelr\": 1, \
                  \"name\": \"platinum\" \
              } \
          } \
      } \
  }"
