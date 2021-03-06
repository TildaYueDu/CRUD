<?php
header('Content-Type:application/json');

try {

	// include database setup
	include('db_init.php');

	// enter the submitted data into the database
	$sql = "DELETE FROM `my_todo_list` WHERE `iid` =:id";
	// bind the params
	// $_POST['id'] = 17;
	$statement = $db->prepare( $sql );
	$statement->bindParam( ':id', $_POST['id'] );
	// execute that statement
	$statement->execute();


	// as long as evertying is okay...
	// output
	$retval['message'] = 'success';

} catch( PDOException $err ) {
	$retval['message'] = 'error';
	$retval['data'] = $err->getMessage();
}

echo json_encode( $retval );



?>

