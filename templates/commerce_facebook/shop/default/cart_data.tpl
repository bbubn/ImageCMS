{$total = ShopCore::app()->SCart->totalItems()}
<li class="cart {if $total}is_avail{/if} "><a href="{shop_url('cart')}" class="js gray goCartData">Корзина</a> ({$total})</li>
