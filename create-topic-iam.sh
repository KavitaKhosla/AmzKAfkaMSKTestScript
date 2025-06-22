#!/bin/bash
source ./env.sh

kafka-topics.sh \
  --create \
  --topic "$TOPIC" \
  --bootstrap-server "$BOOTSTRAP_SERVER" \
  --replication-factor 1 \
  --partitions 1 \
  --command-config iam-client.properties \
  --producer-property "plugin.path=$IAM_JAR"

echo "✅ IAM-secured topic '$TOPIC' created."
