<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxGridView - How to specify HeaderCaptionTemplate and prevent the default mouse actions


<p>This example demonstrates how to define some control inside a header caption template and prevent a default action for the specified events.<br />
</p><p>1) Define any control in <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewColumn_HeaderCaptionTemplatetopic"><u>GridViewColumn.HeaderCaptionTemplate</u></a> and wrap it with a div tag/container;<br />
2) Handle the div client-side<strong> onmousedown</strong> and <strong>onmouseup</strong> events and prevent the default action (column sorting) via the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxClassesScriptsASPxClientUtils_PreventEventAndBubbletopic"><u>ASPxClientUtils.PreventEventAndBubble</u></a> method.</p>

<br/>


