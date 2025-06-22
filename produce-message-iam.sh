#!/bin/bash
source ./env.sh

echo "Enter message to send to topic '$TOPIC':"
read MESSAGE

echo "$MESSAGE" | kafka-console-producer.sh \
  --broker-list "$BOOTSTRAP_SERVER" \
  --topic "$TOPIC" \
  --producer.config iam-client.properties \
  --producer-property "plugin.path=$IAM_JAR"
