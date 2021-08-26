<?php
/* Added By Kinjal Shah
 * On 26 Aug,2021
 * For Create Target module record using other website/API Call.
 */

if (!empty($_REQUEST['source']) && !empty($_REQUEST['email'])) {
	$email = $_REQUEST['email'];
	$source = $_REQUEST['source'];
	$type_of_subscriber = $_REQUEST['type_of_subscriber'];
	$name = !empty($_POST['name_of_subscriber']) ? $_POST['name_of_subscriber'] : $_POST['email'];
	global $db;
	$sqlQuery = "SELECT eaddbean.bean_id FROM email_addresses eadd LEFT JOIN email_addr_bean_rel eaddbean ON eaddbean.email_address_id = eadd.id WHERE eadd.email_address ='{$_REQUEST['email']}' AND eaddbean.bean_module = 'Prospects' AND eaddbean.deleted = 0 AND eaddbean.primary_address = 1";
	$prospectData = $db->fetchOne($sqlQuery);
	if (!empty($prospectData)) {
		$aData = array(
			'status' => 409,
			'message' => 'Record Already Exist',
			'record_id' => $prospectData['bean_id'],
		);
	} else {
		$oProspect = new Prospect();
		$oProspect->id = create_guid();
		$oProspect->new_with_id = true;
		$oProspect->last_name = $name;
		$oProspect->email1 = $email;
		$oProspect->source = $source;
		$oProspect->type_of_subscriber = $type_of_subscriber;
		$oProspect->save();
		$aData = array(
			'status' => 200,
			'message' => 'New Record Created',
			'record_id' => $oProspect->id,
		);
	}

} else {
	$aData = array(
		'status' => 404,
		'message' => 'Please enter valid data',
		'record_id' => '',
	);
}
print_r(json_encode($aData));