<?php
// created: 2021-05-17 11:06:37
$dictionary["documents_aos_product_categories_1"] = array (
  'true_relationship_type' => 'many-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'documents_aos_product_categories_1' => 
    array (
      'lhs_module' => 'Documents',
      'lhs_table' => 'documents',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Product_Categories',
      'rhs_table' => 'aos_product_categories',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'documents_aos_product_categories_1_c',
      'join_key_lhs' => 'documents_aos_product_categories_1documents_ida',
      'join_key_rhs' => 'documents_aos_product_categories_1aos_product_categories_idb',
    ),
  ),
  'table' => 'documents_aos_product_categories_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'documents_aos_product_categories_1documents_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'documents_aos_product_categories_1aos_product_categories_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
    5 => 
    array (
      'name' => 'document_revision_id',
      'type' => 'varchar',
      'len' => '36',
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'documents_aos_product_categories_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'documents_aos_product_categories_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'documents_aos_product_categories_1documents_ida',
        1 => 'documents_aos_product_categories_1aos_product_categories_idb',
      ),
    ),
  ),
);