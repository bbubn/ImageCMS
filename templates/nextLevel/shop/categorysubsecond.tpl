<div class="frame-crumbs">
    <div class="container">
        {widget('path')}
    </div>
</div>
<div class="frame-inside">
    <div class="container">
        <div class="left-catalog-first">
            <div class="f-s_0 title-category">
                <div class="frame-title">
                    <h1 class="d_i">{echo $category->getName()}</h1>
                </div>
            </div>
            {$CI->load->module('banners')->render($category->getId())}

            {\Category\RenderMenu::create()->load('category_menu_second')}
        </div>
        <div class="right-catalog-first">
            <div class="vertical-carousel carousel-category-popular">
            {widget('popular_products_category')}
            </div>
        </div>

    </div>
</div>
{if trim($category->getDescription()) != ""}
    <div class="frame-seo-text">
        <div class="container">
            <div class="text seo-text">
                {echo trim($category->getDescription())}
            </div>
        </div>
    </div>
{/if}