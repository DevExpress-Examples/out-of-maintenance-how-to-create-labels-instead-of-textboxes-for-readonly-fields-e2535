<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to create labels instead of textboxes for readonly fields


<p>When the ASPxGridView is in Edit mode, sometimes it is required to mark some fields as readonly. Unfortunately, the ReadOnly state might confuse people, because a readonly editor behaves as a regular editor, but it cannot be edited. It is useful to emphasize the readonly editor by customizing its <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsReadOnlyStyleMembersTopicAll">ReadOnlyStyle</a> property (for example, you can adjust a control's background color).</p><p>There are other scenarios to emphasize readonly editors. For example, you can replace the ASPxTextBox (created by the ASPxGridView) with the ASPxLabel placed in the <strong>EditItemTemplate</strong>. This example demonstrates how to achieve this functionality.<br />
Also, the example demonstrates how to create the EditItem template and the InsertItem template.</p><p>The main idea is the following:<br />
1. The edit button is replaced with a custom command button;<br />
2. When the custom button is clicked, some state is written to the ASPxHiddenField;<br />
3. On the server side, the <strong>EditItemTemplate</strong> property is used depending on the state value.</p><p>P.S. In the sample, the <strong>EditCellStyle</strong> is used to make readonly fields  look like regular data cells.</p>

<br/>


