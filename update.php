<?php
header('Content-Type:application/json');

try {

	// include database setup
	include('db_init.php');

	if( !isSet($_POST['id']) ) {
		$retval['message'] = "ERROR";
		$retval['data'] = "ID is not set";
	} else {

		// enter the submitted data into the database
		$sql = "UPDATE `my_todo_list` SET`todo`=:todo WHERE `iid` =:id";
		// bind the params
		$statement = $db->prepare( $sql );
		$statement->bindParam( ':todo', $_POST['text'] );
		$statement->bindParam( ':id', $_POST['id'] );
		// execute that statement
		$statement->execute();


		// as long as evertying is okay...
		// output
		$retval['message'] = 'success';

	}

	// create a new table
	// $sql = "CREATE TABLE IF NOT EXISTS `my_awesome_todo_list` (
	// 	`iid` INT NOT NULL AUTO_INCREMENT,
	// 	`todo` VARCHAR(255) NOT NULL,
	// 	PRIMARY KEY (`iid`)
	// ) ENGINE = InnoDB;";
	// // execute the create statement
	// $result = $db->exec( $sql );


} catch( PDOException $err ) {
	$retval['message'] = 'error';
	$retval['data'] = $err->getMessage();
}

echo json_encode( $retval );



?>

