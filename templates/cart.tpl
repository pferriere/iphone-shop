{extends file='page.tpl'}
{block name='links' append}
	<link href="/css/cart.css" rel="stylesheet" />
	<script src="/js/cart_interface.js"></script>
{/block}
{block name='div.main'}
	<div id="cart">
		<table>
			<tr class="head">
				<td colspan="2">
					Description
				</td>
				<td>
					Price
				</td>
				<td>
					Quantity
				</td>
				<td>
					Delete
				</td>
				<td>
					Total
				</td>
			</tr>
			{foreach $cart item=good}
				<tr>
					<td class="image">
						<img src="/includes/uploads/{$good['image']}_s.jpg" />
					</td>
					<td class="name">
						<a href="/includes/card.php?id={$good['id']}">{$good['name']} - {$good['params']}</a>
					</td>
					<td class="price">
						{$good['price']}€
					</td>
					<td class="quantity">
						<input value="{$good['count']}" /> <button class="white_button" data="{$good['c_id']}">Update</button>
					</td>
					<td class="delete">
						<button class="white_button" data="{$good['c_id']}">Remove</button>
					</td>
					<td class="price">
						{$good['total']}€
					</td>
				</tr>
			{/foreach}
				<tr class="head">
					<td colspan="5">
					</td>
					<td>
						Total: {$total}€
					</td>
				</tr>
		</table>
		<button id="clear" class="white_button big_button">Remove all</button>
		<!---->
		<button id="checkout" class="white_button big_button">Checkout</button>
	</div>
{/block}