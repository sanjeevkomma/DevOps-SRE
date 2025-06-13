# Definition
* APM tools (Application Performance Monitoring or Application Performance Management tools) are software tools that help monitor and manage the performance, availability, and user experience of applications.

# Terminology
* APM = Application Performance Monitoring or Application Performance Management

# Popular APM Tools (with Brief Notes)
| Tool                     | Key Features                                                 | Typical Use Case                                 |
| ------------------------ | ------------------------------------------------------------ | ------------------------------------------------ |
| **New Relic**            | Real-time metrics, distributed tracing, dashboards, alerting | Cloud-native & microservice-heavy apps           |
| **Datadog APM**          | Full-stack observability, traces, logs, infra monitoring     | End-to-end DevOps visibility                     |
| **Dynatrace**            | AI-driven analysis, automatic topology mapping, full-stack   | Enterprise-grade cloud monitoring                |
| **AppDynamics**          | Business transaction monitoring, anomaly detection           | Large-scale enterprise apps                      |
| **Elastic APM**          | Integrated with Elastic Stack (ELK), trace + log + metrics   | Open-source and custom stack                     |
| **Prometheus + Grafana** | Metrics collection + visual dashboards                       | Lightweight, open-source, good for infra metrics |
| **Jaeger**               | Open-source distributed tracing (by CNCF)                    | Tracing in microservices                         |
| **Zipkin**               | Lightweight distributed tracing system                       | JVM-based or custom microservices tracing        |
| **AWS X-Ray**            | Integrated with AWS services for tracing                     | Apps running on AWS                              |
| **Google Cloud Trace**   | GCP native tracing                                           | GCP-hosted applications                          |


# APM vs Related Tools
| Tool Type            | Purpose                                             |
| -------------------- | --------------------------------------------------- |
| **APM**              | App-level performance tracing and monitoring        |
| **Infra Monitoring** | Servers, VMs, containers (e.g., Prometheus, Nagios) |
| **Logging**          | Log storage and analysis (e.g., ELK, Loki, Splunk)  |
| **Error Monitoring** | Exception tracking (e.g., Sentry, Rollbar)          |
