# FROM chef/inspec

# WORKDIR /usr/src/inspec_archery/

# COPY archery ./
# COPY inspec-accepted-license /etc/chef/accepted_licenses/inspec

# RUN apt-get update
# RUN apt install python3-pip -y
# RUN pip3 install -r archerysec-cli/requirements.txt 

FROM npmcheck

WORKDIR /usr/src/inspec_archery/
COPY archery ./
RUN apk add py-pip 
RUN pip install -r archerysec-cli/requirements.txt

ENTRYPOINT ["tail", "-f", "/dev/null"] 




