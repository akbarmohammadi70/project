# Vagrantfile VMs

Development environments managed by Vagrant can run on local virtualized platforms such as VirtualBox or VMware.



- ## Quick Start

  Package dependencies: Vagrant requires `bsdtar` and `curl` to be available on your system PATH to run successfully.

  For the quick-start, we'll bring up a development machine on [VirtualBox](https://www.virtualbox.org/) because it is free and works on all major platforms. 

  First, make sure your development machine has [VirtualBox](https://www.virtualbox.org/) installed. After this, [download and install the appropriate Vagrant package for your OS](https://www.vagrantup.com/downloads.html).

  To build your project virtual environment:

  ```
  vagrant up
  ```



# Kubeadm Ansible Role

Build a Kubernetes cluster using Ansible with kubeadm. The goal is easily install a Kubernetes cluster on machines running:

- Ubuntu 20.04

System requirements:

- Deployment environment must have Ansible `2.4.0+`
- Master and nodes must have passwordless SSH access

# Prometheus and Grafana Ansible Role

launc a Prometheus and Grafana using Ansible with Helm/chart . The goal is easily install a Prometheus and grafana on K8S:



# project Ansible Role

launch a Producer and Consumer kafka using python on K8S. The goal is easily install project on K8S cluster:



# Usage

Add the system information gathered above into a file called `hosts' For example:

```
[masters]
192.168.56.101

[workers]
192.168.56.102
192.168.56.103

[kafka]
192.168.56.104
```

After going through the setup, run the `install.yml` playbook:

```
$ ansible-playbook -i hosts install.yml
```





## 