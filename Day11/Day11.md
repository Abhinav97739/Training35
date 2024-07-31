## Day 11 Task

##### Project Overview - Create a private git repo that has a maven project. In Jenkins create 2 freestyle project, one to compile that maven project and other to test that maven project. Create a pipeline view of the project.

##### Step1. Create a github private repo

Creating a repository
![alt text](1.png)

Generating the personal token
![alt text](2.png)

#### Step2. Compiling the maven project

Create a new freestyle project
![alt text](3.png)

Setting the git credentials in jenkins
![alt text](4.png)

Configure the freestyle project according to the need 
![alt text](5.png)
![alt text](6.png)
![alt text](7.png)
Setup the maven installation
![alt text](8.png)
Setting the maven build steps compile

![alt text](9.png)

Building tha  maven project-compile 
![alt text](10.png)

Testing the maven project 
- Create another freestyle and configure it
- Setup maven build and test
- Build the project
- Adding the post build action and creating a new build pipeline 
- Fill the details 

![alt text](11.png)
![alt text](12.png)
![alt text](13.png)

Final Output
![alt text](14.png)