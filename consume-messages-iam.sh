#!/bin/bash
source ./env.sh

kafka-console-consumer.sh \
  --bootstrap-server "$BOOTSTRAP_SERVER" \
  --topic "$TOPIC" \
  --from-beginning \
  --consumer.config iam-client.properties \
  --consumer-property "plugin.path=$IAM_JAR"
