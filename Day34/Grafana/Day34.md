# Installing Grafana on Ubuntu Server
> Taking the commands from official document
```bash
# Install the prerequisite packages:
sudo apt-get install -y apt-transport-https software-properties-common wget

# Import the GPG key:
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

# To add a repository for stable releases, run the following command:
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```
![alt text](<Screenshot from 2024-09-02 16-43-48.png>)
![alt text](<Screenshot from 2024-09-02 16-45-17.png>)

```bash
# Updates the list of available packages
sudo apt-get update

# To install Grafana OSS, run the following command:
sudo apt-get install grafana
```

> Checking if installation present or not
![alt text](<Screenshot from 2024-09-02 16-45-35.png>)

> UI View
![alt text](<Screenshot from 2024-09-02 16-47-36.png>)
![alt text](<Screenshot from 2024-09-02 16-48-07.png>)

## Installing prometheus and Node Exporter
![alt text](<Screenshot from 2024-09-02 17-46-07.png>)

## COnfiguring Prometheus and Grafana 
![alt text](<Screenshot from 2024-09-02 17-55-05.png>)
![alt text](<Screenshot from 2024-09-02 17-55-14.png>)

> Running simple metrics 
![alt text](<Screenshot from 2024-09-02 17-57-58.png>)
![alt text](<Screenshot from 2024-09-02 18-08-20.png>)