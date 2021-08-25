<?php
 // created: 2021-05-17 11:06:37
$layout_defs["Documents"]["subpanel_setup"]['documents_aos_product_categories_1'] = array (
  'order' => 100,
  'module' => 'AOS_Product_Categories',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_DOCUMENTS_AOS_PRODUCT_CATEGORIES_1_FROM_AOS_PRODUCT_CATEGORIES_TITLE',
  'get_subpanel_data' => 'documents_aos_product_categories_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
