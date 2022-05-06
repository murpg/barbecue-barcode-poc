<cfoutput>
<cfset o = createObject("component", "barcode")>
<img src="#o.getCode128('My first Barcode')#" />
</cfoutput>