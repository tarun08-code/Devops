# Devops

learning Devops

day 4 - virtual machines

improve efficiency using automation like using terraforms and ansabals
using AWS EC2 api call u can make automation

valid
authenticated
authorized

for working of the api key aws will check

now write scripts using AWS cli or python and terraform and also AWS CDK
cloud development kit

Day-5 | AWS CLI Full Guide | How to connect to EC2 Instance from UI & Terminal | AWS CFT walk though

ssh ubuntu@ip_address
denies
ssh -i "ur pemfile path" ubuntu@ip_address
denies
chmod 600 "ur file path"

learn boto 3

Day-6 | Linux & Shell Scripting | Complete Shell Scripting Playlist| #aws #azure | #devops

architecture of Linux

I) kernal-heart if the os connecting hardware to software device managent,memory,process,handling system modules

II) system libraries libc

III) compilers - userprocess - system softwares

FUNDAMENTALS OF SHELL SCRIPTING OR COMMANDS

1>ls
2>cd
3>pwd
4>cd ..
5>cd ../..
6>ls -ltr - for checking if its directory or file
7>touch - creating a new file
8>vi "filename" - creates and writes in vi editor
for writing click -> esc -> i -> write the content then -> :wq -> enter to exit
9>cat - to print or view the file
10>mkdir
11>rm - removing the file
12>rm -r - removing the directory
13>free - to check the ram details
14>free -g - to check propely
15>nproc - only ram
16>df -h - to check the disk
17>top - to completely check

---

Day-7 | Live AWS Project using SHELL SCRIPTING for DevOps | AWS DevOps project
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/9f2a45d3-21a8-425d-a545-053da597b88e" />

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/70c3e864-0b4e-4b20-b4b4-c55537e24916" />

out put

so in this way we are getting a lots of output but we want only some instance id thing
so we use { jq and yq } jq for json format and yq for yml format to simply get what we need

aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId" --output text #this only lists the instance id

---

in this project i wrote a simple shell script to Listing users with read access

Day 8

GitHub docs how to integrate GitHub repo using GitHub api and using in shell scripts to ease the work

task 1 basic - what devops engineer will be doing is they create GitHub repos and manage proper access to developers

- after this u wanna list the ppl and see who has acces now listing it using shell grant and revoke
- so to do this in gui u enter passeord and user name but to do in the cli u don't use it u use [ api token ]

  HOW TO GET THE API TOKEN

go to repo setting and navigate to developer role or access and click generate a new token there u have it

after this pre-required thig to do is

export username="tarun08-code"
export token="your_token"

OK NOW TO RUN THE SHELL SCRIPT

./shellscript.sh org_name repo_name

if the permission is denied
use
chmod 777 shellscript.sh

again run the shell script

INSTALLING THE JQ OR YQ

sudo apt install jq -y

shell code -------------------------------------------------------------------------------------------------
check the p2-github-api folder for script

![alt text](image.png)

------------------------------------------------------------------------------------------------

Day 9 

git and github complete whivh i already know 

day 10 

branching and git again

day 11

Day-11 | Git Interview Q&A and Commands for DevOps | Real World Example 

adding ssh key to my github 

location -   /c/Users/Dineshtarun G/.ssh/id_rsa.pub

Day 12 | Deploy and expose your First App to AWS | Feat. Kunal Verma | Live Project | #aws projects

---------------------------------------------------------------------------------------------------

deployed the app 

Day 13 | Top 15 AWS Services that Every DevOps Engineers should learn |

-----------------------------------------------------------------------------------------------------

aws services that i should learn as a devops engineer 

1 .EC2 
2. VPC
3 . EBS 
4. S3 
5. IAM 
6. CLOUD WATCH 
7. LAMDA 

8. CLOUD  BUILD SERVICE  -  AWS version = CodeBuild.
Pulls code → installs deps → tests → builds → outputs artifacts. CI/CD

9. AWS CONFIGURATION  -  Setting up AWS resources and environment (VPC, EC2, IAM, S3, etc.) so your system runs smoothly.

10. BILLING AND COSTING
11. AWS KMS
12. CLOUD TRAIL  -  Stores the logs of api things 

                  AWS CloudTrail = CCTV camera for your AWS account.

It records every action done in AWS, like:

Who created EC2?

Who deleted an S3 bucket?

Who changed IAM policies?

When did someone log in?

Basically, logs every API call happening in your AWS account.


13 .AWS EKS      -  Amazon Elastic Kubernetes Service (EKS) like kubernetes 
    AWS ECS      -  elastic contanarization service like awsw will manage all the containers no kubernetes no           tension 
14. FORGATE 
15. ELK STACK    - ELK = Elasticsearch + Logstash + Kibana 

                    Logstash → Collect logs

                    Elasticsearch → Store + search logs

                    Kibana → Visualize logs

Day-14 | Configuration Management With Ansible |Puppet vs Ansible |Live Projects | #ansible #devops

-------------------------------------------------------------------------------------------------------------------

Notes of this video-

Scenario- System admin has to configure 100s of servers, each with different OS like Ubuntu, CentOS, Windows.
Tasks include updating OS, security patches, default installations like git, databases on servers. 

Issue- Doing this manually on every server is difficult. Hence, scripts were used. Powershell scripts for windows machines, other shells for Linux machines. Even in Linux machines, scripts varied based Linux flavours and type of script (bash, zsh, tsh, etc). This script will then loop over all servers to perform configuration tasks.

With cloud and micro service architecture adoption, number of servers have increased further. 

Hence, even scripting approach is not very efficient. This led to concept of configuration management. Various tools are used for configuration management. Puppet and Chef were pioneering tools while Ansible, developed by Red Had is most popular.

Why Ansible over Puppet?
	1. Puppet = Pull mechanism, Ansible= Push mechanism. Eg. Managing 10 EC2- Write ansible playbook and push to all 10 EC2
	2. Puppet uses Master-Agent architecture- Have to create Master server and configure all 10 EC2 as agents. Ansible is agentless. Write only ip/dns of machine in inventory file and have passwordless authentication enabled. In case of dynamic demand, auto-scaling is possible by changing inventory file. Even better- 'Dynamic Inventory' feature auto detects demand- doing away need to change inventory file.
	3. Support for Windows is better in Ansible than Puppet
	4. Ansible Playbook is written in YAML which is widely used. Puppet configuration is written in Puppet language.
	
	
Issues with Ansible
	1. Support for Windows is still not seamless
	2. Debugging is not easy. Can run ansible in debug mode but debugging logs are not easy to understand.
	3. Performance issues- when managing thousands of servers




Configuration Management & Ansible - Summary Notes

What is Configuration Management?

Purpose: Managing configuration of multiple servers (upgrades, security patches, installations)
Problem it solves: Manual management of hundreds/thousands of servers is extremely difficult and time-consuming
Traditional approach: Writin g shell scripts (Linux) or PowerShell scripts (Windows) - complex and distribution-dependent
Why Configuration Management Tools?
Cloud era challenges:
10x increase in number of servers
Microservices architecture = more servers with smaller configurations
Dynamic scaling (up/down) based on demand
Need: Automated tool to manage configurations across multiple servers regardless of OS/distribution
Popular Configuration Management Tools
Puppet
Chef
Ansible (most widely used)
Salt
Why Ansible is the Winner?
1. Push vs Pull Model
Ansible: Push model - write playbooks on laptop, push configuration to servers
Puppet: Pull model - servers pull configuration from master
2. Agentless Architecture
Ansible: No agent installation needed, just IP address in inventory file + passwordless authentication
Puppet/Chef: Requires Master-Slave setup with agents on each server
3. Better Windows & Linux Support
Uses SSH for Linux
Uses WinRM for Windows
Good module support for both platforms
4. Simple YAML Syntax
Ansible uses YAML (widely known language)
Puppet requires learning proprietary Puppet language
5. Dynamic Inventory
Auto-detects new servers in AWS/cloud
No manual inventory file updates needed
Ansible Disadvantages
Windows support still needs improvement
Debugging capabilities could be better
Performance issues with 10,000+ servers
Key Interview Questions & Answers
Programming language? Python (for writing modules), YAML (for playbooks)
Supports Windows & Linux? Yes - SSH for Linux, WinRM for Windows
Push or Pull? Push mechanism
Cloud provider support? Works with all clouds (AWS, Azure, GCP) - only needs public IP and SSH access
Why Ansible over Puppet/Chef? Agentless, push model, YAML syntax, easier to use
Additional Features
Ansible Galaxy: Share custom modules with community
Custom modules: Write your own using Python
Extensible: Contribute to open-source enhancement

Day-15 | Ansible Zero to Hero

# Ansible Tutorial Summary

This is **Day 15 of a DevOps course** focusing on practical Ansible implementation (following Day 14's theory).

## Key Topics Covered

### 1. **Installation & Setup**
- Install Ansible on Ubuntu using: `sudo apt update` then `sudo apt install ansible`
- Verify installation: `ansible --version`
- Use package managers (apt, brew, chocolatey) rather than pip for easier setup

### 2. **Passwordless Authentication**
- Generate SSH keys: `ssh-keygen`
- Copy public key from Ansible server to target server's `authorized_keys` file
- This enables Ansible to communicate with target servers without passwords

### 3. **Ansible Ad-Hoc Commands**
- For simple, one-off tasks (no playbook needed)
- Syntax: `ansible -i inventory all -m shell -a "touch devops_class"`
- Use `-m` for module, `-a` for arguments
- Examples: creating files, checking disk usage, running shell commands

### 4. **Inventory File**
- Stores target server IP addresses
- Can group servers (e.g., `[web_servers]`, `[db_servers]`)
- Allows selective execution on specific server groups

### 5. **Ansible Playbooks**
- For multiple tasks requiring structured execution
- Written in YAML format
- Example: Installing and starting Nginx
- Use `ansible-playbook -i inventory playbook.yaml` to execute
- Add `-vvv` for verbose debugging output

### 6. **Ansible Roles**
- For complex, structured playbooks (e.g., Kubernetes setup)
- Create with: `ansible-galaxy role init <role_name>`
- Organized structure: tasks, handlers, templates, files, vars, defaults, meta
- Makes large playbooks maintainable and reusable

**Best Practice**: Use Terraform for infrastructure creation, Ansible for configuration management.
---------------------------------------------------------------------------------------------------
Day-16 | Infrastructure as Code | #terraform #IaC


# Video Summary: Infrastructure as Code & Terraform

This is **Day 16 of a DevOps course** focusing on Infrastructure as Code (IaC) concepts.

## Key Problems Identified

**Scenario**: A DevOps engineer at Flipkart needs to manage 300 applications across different cloud platforms.

**The Challenge**:
- Each cloud provider has its own automation tool (AWS CFT, Azure Resource Manager, OpenStack Heat Templates)
- Migrating between providers requires rewriting hundreds of scripts
- Organizations increasingly use **hybrid cloud** models, requiring knowledge of multiple tools simultaneously

## The Solution: Terraform

**What Terraform offers**:
- **One tool** to automate infrastructure across multiple cloud providers
- Uses **API as Code** concept - converts Terraform scripts into provider-specific API calls
- Smooth migration between cloud providers with minimal code changes
- No need to learn provider-specific tools (CFT, ARM, Heat Templates, etc.)

## Core Concepts Explained

1. **Infrastructure as Code (IaC)**: Automating infrastructure using code instead of manual processes
2. **API as Code**: Terraform's approach - write once in Terraform language, and it handles communication with any cloud provider's API

**Bottom line**: Instead of learning AWS CFT, Azure ARM, and other provider-specific tools, learn Terraform once and automate across all platforms.

Day-17 |Everything about Terraform |Write Your First Project |Remote Backend |Modules |Interview Q&A

# Terraform Tutorial Summary

This comprehensive video covers Terraform from basics to advanced concepts. Here's what you'll learn:

## Key Topics Covered

### *Basics & Installation*
- What Terraform is and why it's better than cloud-specific tools (AWS CloudFormation, Azure ARM)
- Installation on Mac, Linux, Ubuntu, and CentOS
- Core commands: `terraform init`, `plan`, `apply`, `destroy`

### *Writing Terraform Files*
- *Provider configuration* - Setting up AWS/Azure providers
- *Resource blocks* - Creating infrastructure (EC2, S3, DynamoDB)
- *Best practices* - Using `input.tf` and `output.tf` for variables
- HashiCorp documentation as the primary reference

### *State File Management* (Critical Topic)
- State files track all infrastructure changes
- *Never store state files locally or in Git* - contains sensitive data
- *Remote backends* - Use S3 bucket for state storage
- *DynamoDB locking* - Prevents parallel execution conflicts

### *Ideal Terraform Setup*
1. Store `.tf` files in Git repository
2. Store state files in S3 (remote backend)
3. Use DynamoDB for state locking
4. Execute via CI/CD (Jenkins/GitHub Actions)

### *Terraform Modules*
- Reusable code components across teams/environments
- Reduces duplication and standardizes infrastructure

### *Problems with Terraform*
- State file corruption risks
- No bi-directional sync (manual cloud changes aren't auto-detected)
- Not truly GitOps-friendly
- Can become complex at scale

## Practical Assignment
1. Clone the GitHub repository provided
2. Start with local state example
3. Progress to remote state with S3/DynamoDB
4. Prepare your own interview questions from the content

**Resources**: Complete code examples and configurations available in the instructor's GitHub repository.

terraform init
terraform plan 
terraform apply
terrafrom destroy

![alt text](image.png)

Remote Backend		- storing the terraformstatefull file in cloud like s3 

⭐ Ideal Terraform Setup (Short Summary)

You write Terraform code and push it to GitHub.

Jenkins picks the code and automatically runs Terraform (init, plan, apply).

Terraform state is stored safely in S3 bucket instead of your laptop.

DynamoDB provides state locking so two people can’t run apply at the same time.

AWS Cloud is where the actual infrastructure gets created.

------------------------------------------------------------------------------------------------------------------------------------------

🚀 Top Terraform Interview Questions (For You Only, DevOps Edition)
1️⃣ What is Terraform and why do we use it?

(Infra automation, IaC, cloud provisioning, etc.)

2️⃣ What is a Terraform state file? Why is it important?

(Stores infra info, Terraform’s memory, very sensitive.)

3️⃣ What are the risks of keeping state locally?

(Secrets exposure, corruption, team conflicts.)

4️⃣ What is a remote backend? Why use S3 + DynamoDB?

(State stored safely in S3, locking handled by DynamoDB.)

5️⃣ What is state locking?

(Prevents multiple people from applying changes at the same time.)

6️⃣ Difference between terraform plan and terraform apply?
7️⃣ What does terraform init do?

(Downloads provider plugins, configures backend.)

8️⃣ What is a provider in Terraform?

(E.g., AWS provider — tells Terraform which cloud you’re using.)

9️⃣ What are variables and outputs? Why use them?
🔟 What is Terraform module?

(Reusable piece of code.)

1️⃣1️⃣ How do you import an existing AWS resource into Terraform?

(terraform import command.)

1️⃣2️⃣ What is the Terraform workflow?

(init → plan → apply → destroy)

1️⃣3️⃣ What is drift?

(Infra changed outside Terraform → conflict.)

1️⃣4️⃣ When do you use terraform refresh and terraform validate?
1️⃣5️⃣ What is .terraform.lock.hcl file?

(Tracks provider versions to avoid breaking code.)


Networking Concepts are Easy | Networking Explained in a simple way
----------------------------------------------------------------------------------------------------
refer separate notes in files for complete notes 

8 bits = 4 bytes thats y ip add are like this 

162.43.54.3  this has 4 bytes and each byte contains 8 bits 

maximum bits can be 255 and this cant be changed this is ip v4 standards 

so its 2 power 255 which is 

✅ IPv4 = 32 bits

1 byte = 8 bits

4 bytes → 4 × 8 = 32 bits

So total possible IPv4 addresses = 2³² = 4,294,967,296 (around 4.3 billion).

this is not enough so we decided to use ipv6 version 6 in this 

IPv6 uses 128 bits →
Total addresses = 2¹²⁸ ≈ 340 undecillion

8 blocks × 16 bits = 128 bits

IPv6 = 128 bits
= 8 sections
= each section 16 bits
= written in hex for convenience.

eg - 
IPv4 = 4 blocks
Example: 192.168.0.1

IPv6 = 8 blocks
Example: 2401:abcd:ef01:2345:6789:abcd:ef12:3456

subnet -----------------------------
part of bigger network and its separate and secure 

public subnet - which has access to the internet 
private subnet - which does not have access to the internet   
 
question 1 - lets say u want 256 ip for ur business needs now how do u get that in a subnet ?

main ip range given is this 172.32.45.0 to 172.32.0.0 

so now u want 256 ips u can just keep the first 3 bytes same and just use the last byte for 256 ip 

eg : 172.32.45.0/24
		172.32.45.1/24
		172.32.45.2/24
		172.32.45.3/24
		.
		.
		.
		till 172.32.45.255 so including the 0 its 256 ips 

simple when asked how we can specify how many ips this is how we can do 

so y do we even pu /24 cuz we are not using the remaining 24 bits lets say ip is like this 

8bits | 8bits | 8bits | 8bits | = 32 

since inside the subnet ur not using the first 3 bytes so its 24 bits thats y u put 24 in the end and now 

32-24 = 8 so u do 2 power 8 which is 256 ips simple :) so this is called CIDR Range 