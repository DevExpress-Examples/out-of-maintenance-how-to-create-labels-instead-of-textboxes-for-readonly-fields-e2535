<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128531464/18.2.2%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2535)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# How to create labels instead of textboxes for readonly fields
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2535/)**
<!-- run online end -->


<p>When the ASPxGridView is in Edit mode, sometimes it is required to mark some fields as readonly. Unfortunately, the ReadOnly state might confuse people, because a readonly editor behaves as a regular editor, but it cannot be edited. It is useful to emphasize the readonly editor by customizing its <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsReadOnlyStyleMembersTopicAll">ReadOnlyStyle</a> property (for example, you can adjust a control's background color).</p><p>There are other scenarios to emphasize readonly editors. For example, you can replace the ASPxTextBox (created by the ASPxGridView) with the ASPxLabel placed in the <strong>EditItemTemplate</strong>. This example demonstrates how to achieve this functionality.<br />
Also, the example demonstrates how to create the EditItem template and the InsertItem template.</p><p>The main idea is the following:<br />
1. The edit button is replaced with a custom command button;<br />
2. When the custom button is clicked, some state is written to the ASPxHiddenField;<br />
3. On the server side, the <strong>EditItemTemplate</strong> property is used depending on the state value.</p><p>P.S. In the sample, the <strong>EditCellStyle</strong> is used to make readonly fields  look like regular data cells.</p>

<br/>


