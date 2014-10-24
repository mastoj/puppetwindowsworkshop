# Exercise 1

The first set of exercises is used to make you familiar with the puppet language and structure. We will start simple and become more and more advanced through out the exercises.

When doing the exercises it could be interesting to apply the manifest multiple times to see what happens if you already have applied a manifest.

## Exercise 1.1 - Hello world

In the folder where you want your puppet code create a folder named `manifests` and in that folder create a file named `site.pp`.

In the file you just created, add the default node use the notify feature to write something when applying puppet.

## Exercise 1.2 - Execute something with powershell

Now when you know that puppet is running the next step is to execute a piece of code with powershell. Try to execute powershell without the powershell module. 

## Exercise 1.3 - Execute the samething with the powershell module installed

To complete this exercise you need to do a couple of things:

 1. Create a modules folder
 2. Install the powershell module `puppet module install --modulepath ./modules puppetlabs-powershell`
 3. Use the powershell provider to execute the code


## Exercise 1.4 - Create a file


## Exercise 1.5 - Create your own module

You are free to create what ever module you want
