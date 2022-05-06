A colleague recently asked how could he run Barbecue Barcode with Lucee.  After doing some investigation last night the suggested method for installing this Java library was to add it into the cfusion/lib directory. That is why he could never get his code to work in Lucee. The best practice today is to create a setting in your Application.cfc adding this.javaSettings. This will allow you to get your jars under version control and this approach will work in either Adobe ColdFusion or Lucee.

This is a POC to run Barbecue Barcode in Adobe ColdFusion or Lucee.  

Just open a shell inside the folder that you unzipped. Now run this Commandbox command. If you are not familiar with COmmandbox you can read about it here. https://www.ortussolutions.com/products/commandbox  
And no you do not need ColdBox to use this product.  It gives you a server. AND SO MUCH MORE...
```
box
server start --console
```
What are the important items? You will need to setup this.javaSettings in your Application.cfc  It should look something like this.  
```
this.javaSettings = {LoadPaths = ["lib"],reloadOnChange=true,watchInterval=30};
```