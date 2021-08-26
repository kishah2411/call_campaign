<?php
$listViewDefs ['Prospects'] = 
array (
  'FULL_NAME' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'related_fields' => 
    array (
      0 => 'first_name',
      1 => 'last_name',
    ),
    'orderBy' => 'last_name',
    'default' => true,
  ),
  'SOURCE' => 
  array (
    'studio' => 'visible',
    'type' => 'enum',
    'label' => 'LBL_SOURCE',
    'width' => '10%',
    'default' => true,
  ),
  'TYPE_OF_SUBSCRIBER' => 
  array (
    'studio' => 'visible',
    'type' => 'enum',
    'label' => 'LBL_TYPE_OF_SUBSCRIBER',
    'width' => '10%',
    'default' => true,
  ),
  'EMAIL1' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_EMAIL_ADDRESS',
    'sortable' => false,
    'link' => false,
    'default' => true,
    'customCode' => '{$EMAIL1_LINK}',
  ),
  'PHONE_WORK' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_PHONE',
    'link' => false,
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
  'TITLE' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_TITLE',
    'link' => false,
    'default' => false,
  ),
);
;
?>
