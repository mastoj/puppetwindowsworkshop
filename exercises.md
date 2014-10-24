# Exercise 2

The first set of exercises is used to make you familiar with the puppet language and structure. We will start simple and become more and more advanced through out the exercises.

When doing the exercises it could be interesting to apply the manifest multiple times to see what happens if you already have applied a manifest.

## Exercise 2.1 - Hello world

In the folder where you want your puppet code create a folder named `manifests` and in that folder create a file named `site.pp`.

In the file you just created, add the default node use the notify feature to write something when applying puppet.

## Exercise 2.2 - Execute something with powershell

Now when you know that puppet is running the next step is to execute a piece of code with powershell. Try to execute powershell without the powershell module. 

## Exercise 2.3 - Execute the samething with the powershell module installed

To complete this exercise you need to do a couple of things:

 1. Create a modules folder
 2. Install the powershell module `puppet module install --modulepath ./modules puppetlabs-powershell`
 3. Use the powershell provider to execute the code

## Exercise 2.4 - Create your own module

Let's move the `Hello world` stuff to a module which we can reuse. Again there are several steps we need to take:

 1. Create a `helloworld` folder inside the `modules` folder.
 2. Create a `manifests` folder inside the `helloworld` folder.
 3. Create a `init.pp` file in the `manifests` folder.
 4. Create a `helloworld` class in the `init.pp`.
 5. Add the `Hello world` stuff to the class.
 6. Update the `site.pp` to `include` the `helloworld` class.

## Exercise 2.5 - Create a file

Now when we have basic structure and execution in place it is time to handle files.

 1. Create a `files` folder in the `helloworld` module.
 2. Create any file in that folder.
 3. Update the `helloworld` class to include the file using the `file` keyword.

## Exercise 2.6 - Create a module to handle ports

No we have the basic building blocks to do something more advanced. One thing that you should care about on a server is what ports are open, so we are going to create a module to handle just that. The powershell script to open a port is available in the scripts folder. Let's get started

 1. Create a module `windowsfunctions` with a `windowsfunctions` class in the `init.pp`. 
 2. Add the `portmanager.ps1` file to the files folder of the module.
 3. Add the file using the `file` keyword in the `windowsfunctions` class.
 4. Use the `define` keyword to define the type `port` in the `windowsfunctions` class that takes port number as a parameter.
 5. In the `port` type `notify` that it is running and then execute the `portmanager.ps1` script to open the port.
 6. Add a declaration of a port in `site.pp` for the default node.

To call the `portmanager.ps1` you use the following: `<path to>\portmanager.ps1 -name <name> -number <number>`

# Exercise 3

The goal of this exercise is to create your own nuget package. There are two alternatives:

 1. Create a package the java server jre.
 2. Create a package of SQL Server Express.

If you choose the java package, which is useful when you run things that depends on java like elasticsearch, it include unzipping the java zip file and setting the path variable. For SQL server it includes installing the SQL server.

To create the package use the instructions in the presentation.

# Exercise 4

Now when we have created a package we should install it using puppet instead of manually.

 1. Add the chocolatey module: `puppet module install --modulepath ./modules rismoney-chocolatey`.
 2. Use the `package` keyword to add the package.
 3. Set source to a local folder where you have the nuget package which is shared between the VM and the host.

# Exercise 5

Install any service manually on your VM, if you have chosen SQL in the previous exercise you are good, otherwise make a quick manual install of elasticsearch.

When the service is installed make sure it is stopped so we can start it with puppet.

In your `site.pp` add a `service` where you specify that it should be running. The syntax for defining a service is available in the presentation.