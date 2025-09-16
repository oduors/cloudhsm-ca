#!/bin/bash
wget https://s3.amazonaws.com/cloudhsmv2-software/CloudHsmClient/Amzn2023/cloudhsm-dyn-latest.amzn2023.x86_64.rpm
sudo yum install -y ./cloudhsm-dyn-latest.amzn2023.x86_64.rpm
