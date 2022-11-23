curl -X POST 10.108.47.138:5000/config/v1/network-slice/default-slice \
-H "Content-Type: application/json" -d \
"{ \
    \"slice-id\": \
    { \
        \"sst\": \"1\", \
        \"sd\": \"010203\" \
    }, \
    \"qos\": \
    { \
      \"uplink\": 4000000, \
      \"downlink\": 20000000, \
      \"traffic-class\": \"platinum\" \
    }, \
    \"site-device-group\": \
    [ \
        \"default-group\" \
    ],\
    \"site-info\": \
    { \
        \"site-name\": \"aiab\", \
        \"plmn\": \
        { \
            \"mcc\": \"001\", \
            \"mnc\": \"01\" \
        }, \
        \"gNodeBs\": \
        [ \
            { \
                \"name\": \"aiab-gnb1\", \
                \"tac\": 1 \
            } \
        ], \
        \"upf\": \
        { \
            \"upf-name\": \"upf\", \
            \"upf-port\": 8805 \
        } \
    } \
}"
