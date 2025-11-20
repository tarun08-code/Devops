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
 
II) system libraries  libc 

III) compilers - userprocess - system softwares 

FUNDAMENTALS OF SHELL SCRIPTING OR COMMANDS

1>ls 
2>cd 
3>pwd
4>cd ..
5>cd ../..
6>ls -ltr  -  for checking if its directory or file 
7>touch  - creating a new file 
8>vi "filename"  -  creates and writes in vi editor 
	for writing click -> esc -> i -> write the content then -> :wq -> 	enter to exit 
9>cat - to print or view the file 
10>mkdir
11>rm - removing the file 
12>rm -r - removing the directory
13>free - to check the ram details 
14>free -g  - to check propely 
15>nproc - only ram
16>df -h  - to check the disk
17>top - to completely check

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Day-7 | Live AWS Project using SHELL SCRIPTING for DevOps | AWS DevOps project

out put 

<img width="1919" height="1079" alt="Screenshot 2025-11-20 203923" src="https://github.com/user-attachments/assets/13474db0-a31a-44a8-a10a-03345d5b9edc" />


ubuntu@ip-172-31-32-88:~$
ubuntu@ip-172-31-32-88:~$ ./aws1.sh | more
{
    "Reservations": [
        {
            "ReservationId": "r-0975ad711ec4e5711",
            "OwnerId": "429435741267",
            "Groups": [],
            "Instances": [
                {
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/sda1",
                            "Ebs": {
                                "AttachTime": "2025-11-20T14:39:15+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0b5489334818d646f"
                            }
                        }
                    ],
                    "ClientToken": "80378820-b295-4cb6-be86-7efcae69b79a",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "NetworkInterfaces": [
                        {
                            "Association": {
                                "IpOwnerId": "amazon",
                                "PublicDnsName": "ec2-52-66-205-132.ap-south-1.compute.amazonaws.com",
                                "PublicIp": "52.66.205.132"
                            },
                            "Attachment": {
                                "AttachTime": "2025-11-20T14:39:15+00:00",
                                "AttachmentId": "eni-attach-05fde256bffb7596b",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupId": "sg-0dcd7203217e7b6bb",
                                    "GroupName": "launch-wizard-1"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:50:36:33:17:b9",
                            "NetworkInterfaceId": "eni-0a0216c6e09af86fc",
                            "OwnerId": "429435741267",
                            "PrivateDnsName": "ip-172-31-32-88.ap-south-1.compute.internal",
                            "PrivateIpAddress": "172.31.32.88",
                            "PrivateIpAddresses": [
                                {
                                    "Association": {
                                        "IpOwnerId": "amazon",
                                        "PublicDnsName": "ec2-52-66-205-132.ap-south-1.compute.amazonaws.com",
                                        "PublicIp": "52.66.205.132"
                                    },
                                    "Primary": true,
                                    "PrivateDnsName": "ip-172-31-32-88.ap-south-1.compute.internal",
                                    "PrivateIpAddress": "172.31.32.88"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-040ec3591f6522f37",
                            "VpcId": "vpc-0ce813e5355c945f9",
                            "InterfaceType": "interface",
                            "Operator": {
                                "Managed": false
                            }
                        }
                    ],
                    "RootDeviceName": "/dev/sda1",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupId": "sg-0dcd7203217e7b6bb",
                            "GroupName": "launch-wizard-1"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Name",
                            "Value": "Devops"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "required",
                        "HttpPutResponseHopLimit": 2,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "BootMode": "uefi-preferred",
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2025-11-20T14:39:15+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": true,
                        "EnableResourceNameDnsAAAARecord": false
                    },
                    "MaintenanceOptions": {
                        "AutoRecovery": "default",
                        "RebootMigration": "default"
                    },
                    "CurrentInstanceBootMode": "uefi",
                    "NetworkPerformanceOptions": {
                        "BandwidthWeighting": "default"
                    },
                    "Operator": {
                        "Managed": false
                    },
                    "InstanceId": "i-02fef20c096ebd99e",
                    "ImageId": "ami-02b8269d5e85954ef",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "PrivateDnsName": "ip-172-31-32-88.ap-south-1.compute.internal",
                    "PublicDnsName": "ec2-52-66-205-132.ap-south-1.compute.amazonaws.com",
                    "StateTransitionReason": "",
                    "KeyName": "Devops",
                    "AmiLaunchIndex": 0,
                    "ProductCodes": [],
                    "InstanceType": "t3.micro",
                    "LaunchTime": "2025-11-20T14:39:15+00:00",
                    "Placement": {
                        "AvailabilityZoneId": "aps1-az1",
                        "GroupName": "",
                        "Tenancy": "default",
                        "AvailabilityZone": "ap-south-1a"
                    },
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "SubnetId": "subnet-040ec3591f6522f37",
                    "VpcId": "vpc-0ce813e5355c945f9",
                    "PrivateIpAddress": "172.31.32.88",
                    "PublicIpAddress": "52.66.205.132"
                }
            ]
        }
    ]
}
{
    "Functions": []
}
{
    "Users": []
}
ubuntu@ip-172-31-32-88:~$
ubuntu@ip-172-31-32-88:~$

