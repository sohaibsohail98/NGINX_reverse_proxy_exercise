# Future improvements that could be made to the program:

At the moment, the app functions correctly, however, if we wish to run further iterations, there is a bit of a process.  

To be specific, the running app command needs to be ended: 
```
node app.js
```
The program can be ended using this command which needs to be run twice: 

```
CTRL C
```
This results in returning to the root of the project and to rerun the VM, the command to execute is:

```
vagrant ssh app 
```

To run the app, we need to enter the correct directory, these commands need to be executed:

```
cd ..
cd ..
cd home/ubuntu/app
```

Once in the correct directory, we have to enter into admin mode:

```
sudo su
```

Once entered, a command needs to be executed to stop all instances of the node.js file. 

```
killall node
```

Once this is done, the last command is to install the npm module onto the VM again.

```
npm install
```

This will install the relevant dependencies to the node, once this is done, we can run the app again but not in admin mode:

```
exit (Exit out of the admin mode)
node app.js
```

This will complete the second iteration of the program's execution.