# Definition

# Docker
* Docker is an open platform for developing, shipping and running applications. 
* Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. 
* By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production

# Kubernetes
* Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. 
* It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available
* [DigitalOcean Kubernetes for CI/CD](https://try.digitalocean.com/kubernetes-in-minutes/?utm_campaign=apac_brand_kw_en_cpc&utm_adgroup=digitalocean_kubernetes_bmm&_keyword=digitalocean%20kubernetes&_device=c&_adposition=&utm_content=conversion&utm_medium=cpc&utm_source=google&gclid=CjwKCAiA4KaRBhBdEiwAZi1zzjP-MyWdzJJBwvLfoH9vDcpOb4U2D7Dj7ug3fZjiHUgXYa0Hdu70ixoCg8oQAvD_BwE)
* [Helm -- The package manager for Kubernetes](https://helm.sh/)
* [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/) = An API object that manages external access to the services in a cluster, typically HTTP

# Installation
* [Install Kubernetes](https://kubernetes.io/docs/tasks/tools/)


# Kubernetes (K8s) : To Read
* Run GitLab core components on DigitalOcean Kubernetes to manage your development lifecycle, or just the Gitlab Runners to easily scale your build and integration pipeline
* Kubernetes is cloud neutral, it can be run / installed on AWS / AZure / GCP 
* Kubernetes leverages the simplicity of Platform as a Service (PaaS) when used on the Cloud
* A Kubernetes cluster consists of a set of worker machines, called nodes, that run containerized applications. Every cluster has at least one worker node
* Kubernetes is for Container Orchestration
* Pods are the smallest deployable units of computing that you can create and manage in Kubernetes
* A Pod is a group of one or more containers, with shared storage and network resources, and a specification for how to run the containers
* Kubernetes cluster is a set of nodes that run containerized applications
* GCP provides managed service called GKE to create & manage Kubernetes cluster
* Google uses GKE to run YouTube , Google Maps, Google Search
* AWS calls Vitual Server as EC2 instance in AWS Cloud
* AZure calls Virtual Servers as Virtual Machines in AZure cloud
* GCP calls Virtual Servers as Compute Cloud in GCP
* Kubernetes calls Virtual Servers as Nods in Kubernetes cluster
* We can NOT have container with out POD in Kubernetes. The container lives inside the POD
* A POD can have multiple Containers. The Containers inside the POD share resources and Containers inside the POD can talk to each other using localhost / same host.
* Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts
* Each Node can have mulitple Pods, and each Pod can have multiple Containers
* A Node is a worker machine in Kubernetes and may be either a virtual or a physical machine, depending on the cluster
* Kubernetes cluster is a set of nodes that run containerized applications
* ReplicaSet ensures that a specified number of pod replicas are running at any given time
* Container runs inside the Pod
* Pod provides grouping for Containers
* As soon as we deploy app / image into Kubernetes, it creates new Replica Set
* Kubernetes uses deployment strategy called "Rolling updates" to make sure Zero downtime deployments 
* The rolling update strategy is a gradual process that allows you to update your Kubernetes system with only a minor effect on performance and no downtime
* Rolling update strategy means that It updates one Pod ( Pod instance ) at a time. It launches new Pod for V2 version, then it reduces no of Pods for V1 version and then increases no of Pods for V2 version and so on
* In Kubernetes, instance means Pod instance
* Deployment ensures that release upgrade switch from V1 to V2 happens with out a hitch. We dont need to have downtime when we release new version of application
* Each POD has its own IP Address
* Load will be distributed among all the PODs using load balancer
* In Kubernetes, service provides external interface to applications which are running inside Pods
* POD is wrapper for set of Containers. Each POD has its own IP Address, Label, Annotation etc
* In practice, Replica Set is always tied with a specific release version ( V1 version, V2 version etc )
* In kubernetes world , Pod is a throw away unit. It can be deleted / created ...
* Service will be created with an unique IP Address ( LoadBalancer IP Address ), when we expose the deployment to Kubernetes
* Loadbalancer will distribute the load among the Pods in Kubernetes
* Each Cluster has its own unique IP Address 
* Each Service / Load Balancer has its own unique IP Address & Port number
* Each Pod has its own IP Address
* Protocol can be "TCP"
* The role of service is providing always available external interface to the applications which are running inside the pods
* Service allows the applications to receive traffic through permanant IP Address
* Service remains up & running. It provides constant frontend interface irrespective of what ever changes happening in the background which are all the pods where application is running
* Kubernetes provides excellent integration with all cloud providers specific loadbalancers
* Loadbalancer is type of Service provided by all cloud provides such as GCP, AWS, AZure
* Service will be load balancing between Pods running at that time
* Each cluster has its own IP Address
* External Load balancer will be created automatically by Kubernetes for each Service when service gets created
* Kubernetes is integrated with GCP to create / provide load balancer
* Loadbalancer itself is a service provided by Cloud Provider
* ClusterIP service is the service which can be accessed inside the Cluster
* "Workloads" is specific to Service in GCP
* etcd is a strongly consistent, distributed key-value store that provides a reliable way to store data that needs to be accessed by a distributed system or cluster of machines
* Each Worker Node can have any number of PODs
* etcd is a CNCF project, which used by Kubernetes, ROOK, CoreDNS, M3
* Master Node does NOT run any application related Containers
* Kubernetes can run any Containers, specific to OCI ( Open Container Interface ), not only Docker
* Environment variable ( for ex : SERVICE_NAME_SERVICE_HOST ) for each Service ( for ex : SERVICE_NAME ) will be created by Kubernetes automatically when we launch up new POD
* When we launch up new POD, all the existing service information is made available to Pod as Environment variable
* Every micro-service is treated as "Service" in Kubernetes Cluster
* YAML file is the example of Declarative Way
* Environment Variable helps Micro services communication
* Each micro-service has its own Environment Variable, which helps for Micro services communication
* Config Map is that where we have Centralized Configuration

# Features
* Auto Scaling --- can scale up / scale down the pods based on the load of the application
* Service Discovery --- It helps microservice to find another microservice using Environment Variable ( default Environment Variable / custom Environment Variable )
* Load Balancer --- distribute load among containers ( instances of micro service )
* Self Healing ---
* Zero downtime deployments --- release new version without downtime --- Liveness Probe & Readiness Probe are used
* Centralized Configuration = Config Map
* Centralized Logging = Spring Sleuth will be used to trace the request flow among micro services in logs using trace id 
* Centralized Monitoring = 

# GKE Centralized Monitoring Dashboard
1. Cluster
2. Namespace
3. Node
4. Workload
5. Service
6. Pod
7. Container

# Terminology
* Kubernetes Cluster = A set of Nodes that run containerized applications
* Cloud Neutral = 
* Node = Virtual Server / Vitual Machine in Kubernetes cluster
* Cluster = Master Node(s) + Worker Node(s)
* Container =
* Pod = Smallest Deployable Unit in Kubernetes, where containers reside in it
* Deployment = Deployment ensures that release upgrade switch from V1 to V2 happens with out a hitch. We don't need to have downtime when we release new version of application.
* Service = It provides external interface to the applications which are running inside Pods
* Replica = An exact copy or model of something
* Replica Set = It creates / maintains replica of Pods. It ensures that a specified number of pod replicas are running at any given time
* Master Node = It manages the cluster
* Worker Node = It runs your application
* EKS = Elastic Kubernetes Service - AWS
* AKS = Azure Kubernetes Service -  Azure
* GKE = Google Kubernetes Engine - GCP
* Pod = Kubernetes instance
* Pod = Smallest deployable unit in Kubernetes
* Kubernetes Cluster = A set of nodes that run containerized applications
* Helmsman ( Kubernetes Logo ) = A person who steers a ship or boat
* kubectl = Kube Controller
* Pull the Image
* Create the Container
* Start the Container
* Pod Instance = POD is wrapper for set of Containers
* Rolling update strategy = It updates one Pod ( Pod instance ) at a time
* Service IP Address = LoadBalancer IP Address ( Which is public IP Address, can be used to access the Service )
* Protocol = TCP
* Port = Node Port / Target Port
* Service type = External Load Balancer
* OCI = Open Container Interface / Open Containers Initiative
* CNCF = Cloud Native Computing Foundation
* CRI = Container Runtime Interface
* Config Map = Centralized Configuration
* Kubernetes Cluster = 
* Kubernetes Node = 
* Kubernetes Container = 
* Namespace = 
* Liveness probe = to know when to restart a container
* Readiness probe = to decide when the container is available for accepting traffic

# Services
|SNo| #ervice  | ##Intent |
| :---: | :---: | :---: |
| 1 | LoadBalancer | |
| 2 | ClusterIP | |
| 3 | NodePort | |

# Components of Master Node
1. [etcd](https://etcd.io/docs/v3.5/) = etcd is distributed database
2. API Server ( kube-api server ) = Kubectl talks to Kubernetes Cluster. Google Clould Console talks to Kubernetes Cluster. 
3. Scheduler ( kube-scheduler )= It will schdule the Pods onto Nodes
4. Controller Manager ( kube-controller-manager ) = It manages health of Cluster and make sure actual state of Cluster matches with desired state of Cluster

# Components of Worker Node
1. Node Agent ( kubelet ) = It communicates with Master Node
2. Networking Component ( kube-proxy ) = It helps to expose the deployement as service into Node 
3. Container Runtime ( CRI - for ex : Docker ) = It helps to run Container inside Pod
4. PODs ( Multiple Pods running containers ) 

# Commands
* $ curl -LO "https://dl.k8s.io/release/v1.23.0/bin/windows/amd64/kubectl.exe"
* $ gcloud container clusters get-credentials cluster-1 --zone us-central1-c --project sincere-point-259215
* $ kubectl version
* $ kubectl version --client
* $ kubectl cluster-info
* $ kubectl cluster-info dump
* $ kubectl convert --help
* $ kubectl create deployment hello-world-rest-api --image=in28min/hello-world-rest-api:0.0.1.RELEASE === It will create "deployment", "replicaset" & "pod"
* $ kubectl expose deployment hello-world-rest-api --type=LoadBalancer --port=8080 === It will create "service"
* $ kubectl scale deployment hello-world-rest-api --replicas=3
* $ kubectl create deployment spring-boot-h2-database --image=sanjeevkomma/spring-boot-h2-database:0.0.1.RELEASE
* $ kubectl expose deployment spring-boot-h2-database --type=LoadBalancer --port=8080
* $ kubectl scale deployment spring-boot-h2-database --replicas=3
* $ kubectl autoscale deployment currency-exchange --min=1 --max=3 --cpu-percent=70 === It will do horizontal auto scaling
* $ kubectl get hpa === It will tell auto scaling information of the deployments
* $ kubectl top pod === It will tell CPU & Memory utilization of each Pod
* $ kubectl top nodes === It will tell CPU & Memory utilization of each Node
* $ kubectl delete hpa currency-exchange === It will delete horizontal auto scaling
* $ kubectl delete pod <pod_id>
* $ kubectl edit deployment
* $ kubectl set image deployment hello-world-rest-api hello-world-rest-api=DUMMY_IMAGE:TEST
* $ kubectl set image deployment hello-world-rest-api hello-world-rest-api=in28min/hello-world-rest-api:0.0.2.RELEASE
* $ kubectl get events
* $ kubectl get events --sort-by=.metadata.creationTimestamp
* $ kubectl get pods
* $ kubectl get po
* $ kubectl get pods -o wide
* $ kubectl exec mypod -- date
* $ kubectl explain pods
* $ kubectl get replicaset
* $ kubectl get replicaset -o wide
* $ kubectl explain replicaset
* $ kubectl get rs
* $ kubectl get deployment
* $ kubectl get deployment currency-exchange -o yaml
* $ kubectl get deployment currency-exchange -o yaml >>deployment.yaml
* $ kubectl get service
* $ kubectl get service currency-exchange -o yaml
* $ kubectl get service currency-exchange -o yaml >>service.yaml
* $ kubectl diff -f deployment.yaml
* $ kubectl apply -f deployment.yaml === It helps to deploy micro-services using YAML file into Kubernetes cluster
* $ kubectl get svc
* $ kubectl get all  === It will list Pods, Services, Deployments & Replica Sets of the Cluster
* $ kubectl describe pod hello-world-rest-api-687d9c7bc7-f4d9g  
* $ kubectl get componentstatuses
* $ kubectl get services --watch
* $ kubectl delete all -l app=currency-exchange === It will delete POD,Service, Replica Set & Deployment of app
* $ kubectl logs <pod-id>
* $ kubectl logs -f <pod-id>
* $ kubectl create configmap currency-conversion --from-literal=CURRENCY_EXCHANGE_URI=http://currency-exchange
* $ kubectl get configmap
* $ kubectl get configmap currency-conversion
* $ kubectl get configmap currency-conversion -o yaml
* $ kubectl get configmap currency-conversion -o yaml >>configmap.yaml
* $ kubectl rollout history deployment currency-conversion === It tells number of deployments & history of deployment 
* $ kubectl rollout undo deployment currency-conversion --to-revision=1


   

#### Commands
```

docker run -p 8080:8080 in28min/hello-world-rest-api:0.0.1.RELEASE

kubectl create deployment hello-world-rest-api --image=in28min/hello-world-rest-api:0.0.1.RELEASE
kubectl expose deployment hello-world-rest-api --type=LoadBalancer --port=8080
kubectl scale deployment hello-world-rest-api --replicas=3
kubectl delete pod hello-world-rest-api-58ff5dd898-62l9d
kubectl autoscale deployment hello-world-rest-api --max=10 --cpu-percent=70
kubectl edit deployment hello-world-rest-api #minReadySeconds: 15
kubectl set image deployment hello-world-rest-api hello-world-rest-api=in28min/hello-world-rest-api:0.0.2.RELEASE

gcloud container clusters get-credentials in28minutes-cluster --zone us-central1-a --project solid-course-258105
kubectl create deployment hello-world-rest-api --image=in28min/hello-world-rest-api:0.0.1.RELEASE
kubectl expose deployment hello-world-rest-api --type=LoadBalancer --port=8080
kubectl set image deployment hello-world-rest-api hello-world-rest-api=DUMMY_IMAGE:TEST
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl set image deployment hello-world-rest-api hello-world-rest-api=in28min/hello-world-rest-api:0.0.2.RELEASE
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl get componentstatuses
kubectl get pods --all-namespaces

kubectl get events
kubectl get pods
kubectl get replicaset
kubectl get deployment
kubectl get service

kubectl get pods -o wide

kubectl explain pods
kubectl get pods -o wide

kubectl describe pod hello-world-rest-api-58ff5dd898-9trh2

kubectl get replicasets
kubectl get replicaset

kubectl scale deployment hello-world-rest-api --replicas=3
kubectl get pods
kubectl get replicaset
kubectl get events
kubectl get events --sort.by=.metadata.creationTimestamp

kubectl get rs
kubectl get rs -o wide
kubectl set image deployment hello-world-rest-api hello-world-rest-api=DUMMY_IMAGE:TEST
kubectl get rs -o wide
kubectl get pods
kubectl describe pod hello-world-rest-api-85995ddd5c-msjsm
kubectl get events --sort-by=.metadata.creationTimestamp

kubectl set image deployment hello-world-rest-api hello-world-rest-api=in28min/hello-world-rest-api:0.0.2.RELEASE
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl get pods -o wide
kubectl delete pod hello-world-rest-api-67c79fd44f-n6c7l
kubectl get pods -o wide
kubectl delete pod hello-world-rest-api-67c79fd44f-8bhdt

gcloud container clusters get-credentials in28minutes-cluster --zone us-central1-c --project solid-course-258105
docker login
docker push in28min/mmv2-currency-exchange-service:0.0.11-SNAPSHOT
docker push in28min/mmv2-currency-conversion-service:0.0.11-SNAPSHOT

kubectl create deployment currency-exchange --image=in28min/mmv2-currency-exchange-service:0.0.11-SNAPSHOT
kubectl expose deployment currency-exchange --type=LoadBalancer --port=8000
kubectl get svc
kubectl get services
kubectl get pods
kubectl get po
kubectl get replicaset
kubectl get rs
kubectl get all

kubectl create deployment currency-conversion --image=in28min/mmv2-currency-conversion-service:0.0.11-SNAPSHOT
kubectl expose deployment currency-conversion --type=LoadBalancer --port=8100

kubectl get svc --watch

kubectl get deployments

kubectl get deployment currency-exchange -o yaml >> deployment.yaml 
kubectl get service currency-exchange -o yaml >> service.yaml 

kubectl diff -f deployment.yaml
kubectl apply -f deployment.yaml

kubectl delete all -l app=currency-exchange
kubectl delete all -l app=currency-conversion

kubectl rollout history deployment currency-conversion
kubectl rollout history deployment currency-exchange
kubectl rollout undo deployment currency-exchange --to-revision=1

kubectl logs currency-exchange-9fc6f979b-2gmn8
kubectl logs -f currency-exchange-9fc6f979b-2gmn8 

kubectl autoscale deployment currency-exchange --min=1 --max=3 --cpu-percent=5 
kubectl get hpa

kubectl top pod
kubectl top nodes
kubectl get hpa
kubectl delete hpa currency-exchange

kubectl create configmap currency-conversion --from-literal=CURRENCY_EXCHANGE_URI=http://currency-exchange
kubectl get configmap

kubectl get configmap currency-conversion -o yaml >> configmap.yaml

watch curl http://34.66.241.150:8100/currency-conversion-feign/from/USD/to/INR/quantity/10
watch -n 0.1 curl http://34.66.241.150:8100/currency-conversion-feign/from/USD/to/INR/quantity/10

docker push in28min/mmv2-currency-conversion-service:0.0.12-SNAPSHOT
docker push in28min/mmv2-currency-exchange-service:0.0.12-SNAPSHOT
```

# Tutorial
* [Kubernetes doc](https://kubernetes.io/docs/concepts/overview/)
* [minikube start](https://minikube.sigs.k8s.io/docs/start/)

# Questions
* What happens if master node goes down ?
Ans : Applications can continue to be working as master node doest get involved in serving the requests

# Reference
* [announcement](https://cncf.io/news/announcement/2015/07/new-cloud-native-computing-foundation-drive-alignment-among-container)
* [Borg](https://research.google.com/pubs/pub43438.html)
* [CNCF](https://www.cncf.io/about)
* [communication](https://git.k8s.io/community/communication)
* [community repository](https://git.k8s.io/community)
* [containerized applications](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/)
* [developer's documentation](https://git.k8s.io/community/contributors/devel#readme)
* [Docker environment](https://docs.docker.com/engine)
* [Go environment](https://golang.org/doc/install)
* [GoDoc](https://godoc.org/k8s.io/kubernetes)
* [GoDoc Widget](https://godoc.org/k8s.io/kubernetes?status.svg)
* [interactive tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics)
* [kubernetes.io](https://kubernetes.io)
* [Scalable Microservices with Kubernetes](https://www.udacity.com/course/scalable-microservices-with-kubernetes--ud615)
* [troubleshooting guide](https://kubernetes.io/docs/tasks/debug-application-cluster/troubleshooting/)

# Kubernetes
1. Container Orchestration
* ![image](https://user-images.githubusercontent.com/7721150/148990418-5707857e-aa92-412e-a1dd-bfe24c2d14ab.png)
2. Container Orchestration Options
* ![image](https://user-images.githubusercontent.com/7721150/148992136-bd9f41d7-fccb-4841-aeee-25d3ce702370.png)
3. Kubernetes
* ![image](https://user-images.githubusercontent.com/7721150/149068045-10c6a55d-63fb-43ee-8ef3-66f6395ce4ab.png)
4. Kubernetes Architecure
* ![image](https://user-images.githubusercontent.com/7721150/149761034-4dc61777-9e10-40c0-bfea-4132b257894d.png)
5. Pods
* ![image](https://user-images.githubusercontent.com/7721150/150086447-7a6f6d22-7a7b-482a-8e93-a54e8385978a.png)
6. Kubernetes Deployments
* ![image](https://user-images.githubusercontent.com/7721150/150133878-21630440-8324-4b09-be64-f20ac4da09f6.png)
7. Master Node
* ![image](https://user-images.githubusercontent.com/7721150/151943805-73c6086e-8ea2-4918-ac94-3e1f92612069.png)
8. Worker Node
* ![image](https://user-images.githubusercontent.com/7721150/151947632-44c70b13-ca62-4c69-beeb-8a46a68f0a4d.png)
9. Kubernetes Cluster
* ![image](https://user-images.githubusercontent.com/7721150/150386716-b78cb047-4184-4949-8e56-255fda4b99fa.png)
10. Kubernetes Liveness Probe & Readiness Probe
* ![image](https://user-images.githubusercontent.com/7721150/153720890-aa268d1d-b591-4587-ad0d-56fbd4b86eff.png)












