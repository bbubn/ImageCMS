<div class="page-main">
    {$CI->load->module('banners')->render()}
    <div class="frame-benefits">
        {widget('benefits')}
    </div>
    {/*}<div class="frame-start-page-category-menu">
        <div class="container">
            {\Category\RenderMenu::create()->setConfig(array('cache'=>TRUE))->load('start_page_category_menu')}
        </div>
    </div>{ */}
    <div id="popular_products">
        {widget('popular_products', TRUE)}
    </div>
    <div id="action_products">
        {widget('action_products', TRUE)}
    </div>
    <div id="new_products">
        {widget('new_products', TRUE)}
    </div>
    {widget('brands')}
    <div class="frame-seotext-news">
        <div class="frame-seo-text">
            <div class="container">
                <div class="text seo-text">
                    {widget('start_page_seo_text')}
                </div>
            </div>
        </div>
    </div>
</div>