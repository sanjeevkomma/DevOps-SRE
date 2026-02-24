## 🆚 Splunk vs Alternatives

| Tool         | Comparison                                 |
|--------------|---------------------------------------------|
| ELK Stack    | Open-source alternative (Elastic + Kibana)  |
| Datadog      | Cloud-native observability & APM            |
| Prometheus   | Metrics-focused, pairs well with Grafana    |


# Common Architecute
```java
BFF
 ├── OpenTelemetry (instrumentation)
 │
 ├── Prometheus ← metrics scraping
 │       ↓
 │     Grafana (dashboards)
 │
 └── New Relic ← traces + APM + alerts
```
