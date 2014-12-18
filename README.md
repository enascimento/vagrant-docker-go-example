vagrant-docker-go-example
=========================

Vagrant docker example with a hello world golang server. I used the super simple gorilla [mux](http://www.gorillatoolkit.org/pkg/mux) as request router and dispatcher and [godep](https://github.com/tools/godep) as the dependency tool. 

I put this thing together quickly just to see how easy to run a go app in a docker container using vagrant.

USAGE
========================
1. Run ```sh vagrant up app --provider=docker```
This command will download the default boot2docker host image which will take some time for the first time. Then it will pull the golang image into the docker host. It will look like it's stuck, be patient and wait for it to download. 
2. Hit ```sh http://localhost:3000``` and observe "Hello World"

If the server does not respond, go to the Virtualbox UI and manually forward a port to 3000 on the docker host.

