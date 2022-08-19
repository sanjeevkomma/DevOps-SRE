# Definition
* Grafana = Grafana is an open-source analytical platform used to analyze and monitoring time-series data

# Kibana VS Grafana
* Installation & Setup = They are both easy to install & setup, the only difference is that with kibana you need to make sure it is connected to elasticsearch. Another difference is that kibana uses yaml files where as grafana uses .ini files for configurations.
* Monitoring = Grafana measures system metrics majorly whereas kibana is more for logs. You can use both effectively for either of the purposes but kibana provides better methods to read logs and react appropriately.
* Integration =  Grafana has support for a lot of different databases, even elasticsearch. Kibana only has support for elasticsearch.
Security - Kibana has no inbuilt user authentication system but you can make use of Elastic products such as search guard. grafana does have its own authentication and can also be connected to LDAP servers.
* Data discovery = Since Kibana only supports elasticsearch as a data source the query you use for all data discovery is the same, but its the lucene search engine that makes it very powerful as data discovery tool whereas with grafana you have multiple options for data sources and you will have to use their specific queries.
* Visualization & Dashboards = They are kind of identical in the amount customization and beautiful visualizations.
Community - Both communities have a large number of contributors and git commits. Though it seems kibana is slight more popular.

# Reference
* [Grafana Official](https://grafana.com/)
* [Kibana VS Grafna](https://logz.io/blog/grafana-vs-kibana/)
