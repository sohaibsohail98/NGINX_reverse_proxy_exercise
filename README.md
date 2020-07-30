by default nginx listen on port 80
conf file of nginx location inside our app VM
find the default port and replace with 3000
nano /etc/nginx/sites-available/default
once reverse proxy in place inside default file
sudo nginx -t
sudo systemctl restart nginx.
Summary

Our app is currently running on port 3000. This fine for development but browsers use port 80 by default to load web applications.

We could get the app to run on port 80 but that requires giving the app more privileges than we want to which is very dangerous.

We need to set up a reverse proxy.

Tasks
Research how to install and configure Nginx as a reverse proxy. This will listen for requests on port 80 and pass them on to our app on port 3000.

Notes
You will find many many tutorials on how to do this.

If you have started your app and you can see it running on dev.local ( without the :3000 ) you're configuration is correct.

You only need to edit one configuration file to do this.

Once you've completed this task,
- Amend your provisioning script for your app VM so that it installs nginx and does the necessary configuration. Make sure you recreate your VM from scratch and run this provisioning script in order to test it works properly.

# The DOD and what has been met:

- To be able to run the app without the port 3000

- To be able to implement this in automation, in a provisioning script, so every time the VM runs, there is a reverse proxy set up to ensure that the app is running without the port 3000.

This has been met and tested. In order to test it out, these are the following steps needed to be done:

Fork/clone this repo and download all the files.

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

This shows that I've successfully met the DOD and the acceptance criteria.  