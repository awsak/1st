abhisejk ################################### Day 2 ###########################################################

# In aws account search a IAM service

# go to users / create user

# give a some name / click on Provide user access console- optional / click on I want to create an IAM user / user must create a new password

# select option Attach policies directly

# give the access as administratorAccess

# Create user

# GO on you newly create IAM service

# IAM / Security credential / Create access key

# Just click on Other option

# Click on access key

# Download key



######################     VPC    ################################

# in network setting go and see vps id

# now search VPS service

# create VPC / click on VPV only / give some name / ipv4 CIDR manual input / 10.0.0.0/24 / create VPC
########################    ###############


# now ip address  10.0.00/28

# this 28 never grater than 32

# 10.0.0.0/24           # 10.0.0.0/0  # 10.0.0.0/1  # 10.0.0.0/255

#  32-24 = 8
# 2 the power 8 = 256


#################################### #############

# create subnet on vpc service

# select your own VPC

#  give some name / select availability zone you want (a, b ,c ,d)

# IPv4 VPC CIDR block select   / 10.0.0.0/24

# IPv4 subnet CIDR block    / give grater than vPC cidr 10.0.0.0/25

# subnet

################# create one more subnet range #########

# VPC 10.0.0.0/24   (256)

#subnet-1 10.0.0./25   (128)

# now crete subnet

# select your own vpc / give some name / IPv4 subnet CIDR block (10.0.0.128/25)

# click on create subnet


################# create Internet gate-way ###############

#  go to internet get-way and give some name and create / then attach to your own vpc

##################### route table  ##################

# go to VPC service and select one subnet /  go down and select route table id / edit route

#  in edit rule give Destination range / target internet get-way

# save

# go subnet select subnet you add internet gat-way / go to action /edit subnet setting / click on enable auto / save

########################################################################################

# go and create ec2 instance

# just edit one setting network / select you crete vpc subnet-1

### now see this coming with the both IP public and private with the range

############

# go and create ec2 instance

# just edit one setting network / select you crete vpc subnet-2

###### now see this server coming with just private ip with the range



################################################## Day 3 ###########################################

# create ami / with docker install / git & java

# go to launch template / give some name / give regular setting

# Auto scaling / give some name / select launch your a crete / next

# select vpc / next / next / 3 server

