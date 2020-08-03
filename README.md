# The Project:

- To be able to run the app without the port 3000

- Implementing the reverse proxy in automation, through a provisioning script. This will ensure that every time the Vagrant VM is running, a reverse proxy is set up. 

This has been met and tested. In order to test it out, these are the following steps needed to be done:

Fork/clone this repo and download all the files. Please make sure you have the following dependencies installed:

- Vagrant
- VirtualBox
- Ruby
- Bundler

Once this done, from the directory, run this command:

```
vagrant up
```
This will get the machine up and running.

The next command is the following:

```
vagrant provision
```

The bash will look for the "provision" script inside the VagrantFile and execute it. In this case, we have more than one "provision" script, so it runs the "db machine" first then the "app machine". 

Once the code has been fully executed, it should load the app successfully! 

To test this out, run the following addresses:

```
development.local
development.local/posts
```

Both of these addresses should separately open a post page and a app running testing page. 

