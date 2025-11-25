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



