<?php
/* Added By Kinjal Shah
 * On 26 Aug,2021
 * For Target module more information.
 */

$dictionary["Prospect"]["fields"]["type_of_subscriber"] = array(
	'name' => 'type_of_subscriber',
	'vname' => 'LBL_TYPE_OF_SUBSCRIBER',
	'required' => true,
	'studio' => 'visible',
	'type' => 'enum',
	'options' => 'type_of_subscriber_list',
	'massupdate' => true,
	'importable' => 'true',
	'audited' => true,
	'reportable' => true,
	'unified_search' => false,
	'merge_filter' => 'disabled',
);
$dictionary["Prospect"]["fields"]["source"] = array(
	'name' => 'source',
	'vname' => 'LBL_SOURCE',
	'required' => true,
	'studio' => 'visible',
	'type' => 'enum',
	'options' => 'type_of_source_list',
	'massupdate' => true,
	'importable' => 'true',
	'audited' => true,
	'reportable' => true,
	'unified_search' => false,
	'merge_filter' => 'disabled',
);