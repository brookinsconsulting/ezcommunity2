<form action="{www_dir}{index}/trade/checkout/" method="post">

<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<td bgcolor="#f08c00">
	<div class="headline">{intl-confirm_order}</div>
	</td>
</tr>
</table>

<br />

<h2>{intl-products_about_to_order}</h2>

<!-- BEGIN cart_item_list_tpl -->
<table class="list" width="100%" cellspacing="0" cellpadding="4" border="0">
<tr>
	<th>{intl-picture}:</th>
	<th>{intl-product_name}:</th>
	<th>{intl-options}:</th>
	<th>{intl-qty}:</th>
	<td class="path" align="right">{intl-price}</td>
</tr>

<!-- BEGIN cart_item_tpl -->
<tr>
	<td class="{td_class}">
	<!-- BEGIN cart_image_tpl -->
	<img src="{www_dir}{product_image_path}" border="0" width="{product_image_width}" height="{product_image_height}" alt="{product_image_caption}"/>
	<!-- END cart_image_tpl -->&nbsp;
	</td>
	<td class="{td_class}">
	{product_name}
	</td>
	<td class="{td_class}">
        <!-- BEGIN cart_item_option_tpl -->
	{option_name}:
	{option_value}<br>
        <!-- END cart_item_option_tpl -->
	&nbsp;
	</td>
	<td class="{td_class}">
	{cart_item_count}
	</td>
	<td class="{td_class}" align="right">
	{product_price}
	</td>
</tr>
<!-- END cart_item_tpl -->

<tr>
	<td colspan="3">&nbsp;</td>
	<th>{intl-shipping_charges}:</th>
	<td align="right">
	{shipping_cost}
	</td>
</tr>
<tr>
	<td colspan="3">&nbsp;</td>
	<th>{intl-total_cost_is}:</th>
	<td align="right">
	{cart_sum}
	</td>
</tr>
</table>
<!-- END cart_item_list_tpl -->

<!-- BEGIN billing_address_tpl -->
<p class="boxtext">{intl-billing_to}:</p>
<select name="BillingAddressID">
<!-- BEGIN billing_option_tpl -->
<option {is_selected} value="{address_id}">{customer_first_name} {customer_last_name}, {street1} {street2}, {zip} {place} {country}</option>
<!-- END billing_option_tpl -->
</select>
<!-- END billing_address_tpl -->

<p class="boxtext">{intl-shipping_to}:</p>
<select name="ShippingAddressID">
<!-- BEGIN shipping_address_tpl -->
<option {is_selected} value="{address_id}">{customer_first_name} {customer_last_name}, {street1} {street2}, {zip} {place} {country}</option>
<!-- END shipping_address_tpl -->
</select>

<br /><br />

<p class="boxtext">{intl-payment_methods_description}:</p>

<select name="PaymentMethod">
<!-- BEGIN payment_method_tpl -->
<option value="{payment_method_id}">{payment_method_text}</option>
<!-- END payment_method_tpl -->
</select>

<br /><br />


<input type="hidden" name="SendOrder" value="true" />
<input class="okbutton" type="submit" value="{intl-send}" />
</form>



