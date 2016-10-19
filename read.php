<?php
// input databace setup
header('Content-Type:application/json');
try{
	include("db_init.php");

	// enter the submitted data into the database
	$sql = "SELECT `iid`,`todo` FROM `my_todo_list`";
	//execute that statement
	$query = $db->prepare($sql);
	$query->execute();

	// as long as evertying is ok....
	// output
	$retval['message']='success';
	$retval['data'] =$query->fetchALL(PDO::FETCH_ASSOC);

}catch(PDOException $err){
	$retval['message']='error';
	$retval['data']=$err->getMessage();

}
echo json_encode($retval);

?>

