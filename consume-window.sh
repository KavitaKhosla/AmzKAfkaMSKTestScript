#!/bin/bash
source ./env.sh

echo "🟢 Waiting for messages on topic '$TOPIC'..."

kafka-console-consumer.sh \
  --bootstrap-server "$BOOTSTRAP_SERVER" \
  --topic "$TOPIC" \
  --consumer.config iam-client.properties \
  --consumer-property "plugin.path=$IAM_JAR"
