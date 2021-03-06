## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Unit ![image](https://user-images.githubusercontent.com/55418879/123030627-51785200-d3a0-11eb-87e3-ef154f41f1d7.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly stable, in addition to restricting traffic to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system services.


The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    | Container| 10.0.0.5   | Linux            |
| Web-2    | Container| 10.0.0.6   | Linux            |
| Web-3    | Container| 10.0.0.7   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by the Jumpbox.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 |10.0.0.4 137.135.24.58|
| Load Balancer | No             | 13.83.47.45          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows for very quick deployment of additional machines if needed.

The playbook implements the following tasks:
- Installs a docker container
- Installs filebeat on the container
- Installs metricbeat on the container

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
Web-1 - 10.0.0.5
Web-2 - 10.0.0.6
Web-3 - 10.0.0.7

We have installed metricbeat and filebeat on these machines.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the ansible playbook file to the control node.
- Update the ansbile file to include the IP address you are trying to connect to.
- Run the playbook, and navigate to the docker container to check that the installation worked as expected.
