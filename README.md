# AmzKAfkaMSKTestScript
Test .sh script to connect to kafka
# Amazon MSK IAM Shell Scripts

This bundle provides a set of shell scripts to interact with an Amazon MSK cluster secured using **IAM authentication**.

## 🧰 Requirements

- AWS CLI configured (`aws configure`)
- Kafka CLI tools (`kafka-console-producer.sh`, `kafka-console-consumer.sh`, etc.)
- Amazon MSK IAM Auth JAR (`aws-msk-iam-auth-1.1.4-all.jar`)
- Java installed
- Your MSK bootstrap server endpoint

## 📁 Files Included

| File                      | Purpose                                      |
|---------------------------|----------------------------------------------|
| `env.sh`                 | Common environment variables                 |
| `iam-client.properties`  | Kafka config for IAM auth                    |
| `create-topic-iam.sh`    | Creates a new topic                          |
| `produce-message-iam.sh` | Sends one message to the topic               |
| `consume-messages-iam.sh`| Consumes messages from topic (from beginning)|
| `consume-window.sh`      | Live consumer (keep in a separate terminal)  |

---

## 🧪 How to Use

1. ✅ **Edit `env.sh`**  
   Set your Amazon MSK bootstrap server:
   ```bash
   export BOOTSTRAP_SERVER="your-msk-endpoint:9098"
