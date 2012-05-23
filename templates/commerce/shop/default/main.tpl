<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>{$site_title}</title>
        <link rel="stylesheet" type="text/css" href="{$SHOP_THEME}/css/style.css" media="all" />
        <link rel="stylesheet" type="text/css" href="{$SHOP_THEME}/css/jquery.fancybox-1.3.4.css" media="all" />
        <link rel="icon" type="image/x-icon" href="{$SHOP_THEME}images/favicon.png"/>
        <!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="{$SHOP_THEME}/css/ie8_7_6.css" /><![endif]-->
        <!--[if IE 7]><link rel="stylesheet" type="text/css" href="{$SHOP_THEME}/css/ie_7.css" /><![endif]-->
        <script type="text/javascript" src="{$SHOP_THEME}/js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jquery.cycle.all.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jcarousellite_1.0.1.min.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jquery-ui-personalized-1.5.2.packed.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jScrollPane.min.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/cusel-min-2.4.1.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jquery.ui-slider.js" ></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jquery.fancybox-1.3.4.pack.js" ></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/jquery.form.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/imagecms.filter.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/scripts.js"></script>
        <script type="text/javascript" src="{$SHOP_THEME}/js/shop.js"></script>


    </head>
    <body>
        <div class="main_body">
            <div class="top">
                <div class="center">
                    {load_menu('top_menu')}
                    <ul class="user_menu m-l_19">{include_tpl('auth_data')}</ul>
                    <ul class="user_menu cart_data_holder">{include_tpl('cart_data')}</ul>
                </div>
            </div><!-- top -->
            <div class="header center">
                <a href="{shop_url('')}" class="logo"></a>
                <div class="frame_form_search">
                    <form action="{shop_url('search')}" method="get" class="clearfix">
                        <input type="text" size="30" name="text" value="Поиск по сайту" onfocus="if(this.value=='Поиск по сайту') this.value='';" onblur="if(this.value=='') this.value='Поиск по сайту';" />
                        <input type="submit" class="submit"  value="Найти" />                        
                    </form>
                </div>
                <div class="phone">
                    <address>+8 (067) <span>572-58-18</span></address>
                    <span class="js showCallback">Заказать звонок</span>
                </div>
                <ul class="user_menu">
                    <!--    Show callback's form    -->
                    <li><a href="#" class="js">Онлайн консультация</a></li>
                    <!--    Show callback's form    -->

                    <!--    Wish list item's for Header    -->
                    <li id="wishListHolder" class="like blue{if ShopCore::app()->SWishList->totalItems()} is_avail{/if}">
                        {include_tpl('wish_list_data')}</li>
                    <!--    Wish list item's for Header    -->

                    <!--    Products in compare list for Header    -->
                    <li id="compareHolder" class="compare blue{if is_array($CI->session->userdata('shopForCompare'))} is_avail{/if}">
                        {include_tpl('compare_data')}</li>
                    <!--    Products in compare list for Header    -->
                </ul>
            </div><!-- header -->

            <div class="main_menu center">
                <ul class="clearfix">{echo ShopCore::app()->SCategoryTree->ulWithTitle()}</ul>
            </div><!-- main_menu -->
            
            {$shop_content}
            
            <div class="hfooter"></div>
        </div>
        <div class="footer">
            <div class="center">
                <div class="carusel_frame brand box_title">
                    <div class="carusel clearfix">
                        <ul>
                            {foreach ShopCore::app()->SBrandsHelper->mostProductBrands(15, TRUE) as $brand}
                                <li>
                                    <a href="{shop_url($brand.full_url)}">
                                        <img src="{media_url($brand.img_fullpath)}" title="{$brand.name}" />
                                    </a>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                    <button class="prev"></button>
                    <button class="next"></button>
                </div>
                <ul class="footer_menu f_l">
                    <li><a href="#">Главная</a></li>
                    <li><a href="#">Видео</a></li>
                    <li><a href="#">О магазине</a></li>
                    <li><a href="#">Домашнее  аудио</a></li>
                    <li><a href="#">Доставка и оплата</a></li>
                    <li><a href="#">Фото и камеры</a></li>
                    <li><a href="#">Помощь</a></li>
                    <li><a href="#">Домашняя электроника</a></li>
                    <li><a href="#">Контакты</a></li>
                    <li><a href="#">Авто музыка и видео</a></li>
                </ul>
                <ul class="contacts f_l">
                    <li>
                        <span class="b">Тел:</span>
                        <span>+8 (067) 572-58-18<br/>+8 (067) 572-58-18</span>
                    </li>
                    <li>
                        <span class="b">Email:</span>
                        <span>SiteImageCMS@gmail.com</span>
                    </li>
                    <li>
                        <span class="b">Skype:</span>
                        <span>SiteImageCMS</span>
                    </li>
                </ul>
                <div class="footer_info f_r">
                    <div>© Site ImageCMS, {date('Y')}</div>
                    <div class="social">
                        <a href="#" class="mail"></a>
                        <a href="#" class="g_plus"></a>
                        <a href="#" class="facebook"></a>
                        <a href="#" class="vkontakte"></a>
                        <a href="#" class="twitter"></a>
                        <a href="#" class="odnoklasniki"></a>
                    </div>
                    <a href="http://imagecms.net" target="_blank" class="red">Создание интернет магазина</a>
                    <div>SEO оптимизация сайта</div>
                </div>
            </div>
        </div><!-- footer -->

        <div class="h_bg_{whereami()}"></div>
    </body>
</html>