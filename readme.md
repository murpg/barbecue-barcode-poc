A colleague recently asked how could he run Barbecue Barcode with Lucee.  After doing some investigation last night the suggested method for installing this Java library was to add it into the cfusion/lib directory. That is why he could never get his code to work in Lucee. The best practice today is to create a setting in your Application.cfc adding this.javaSettings. This will allow you to get your jars under version control and this approach will work in either Adobe ColdFusion or Lucee.

This is a POC to run Barbecue Barcode in Adobe ColdFusion or Lucee.  

Just open a shell inside the folder that you unzipped. Now run this Commandbox command.  
```
box
server start --console
```
What are the important items? You will need to setup this up.javaSettings in your Application.cfc  It should look something like this.  
```
this.javaSettings = {LoadPaths = ["lib"],reloadOnChange=true,watchInterval=30};
```