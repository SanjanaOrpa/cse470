<?php
	$medicine_isbn = $_GET['medicineisbn'];

	require_once "./functions/database_functions.php";
	$conn = db_connect();

	$query = "DELETE FROM medicines WHERE medicine_isbn = '$medicine_isbn'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "delete data unsuccessfully " . mysqli_error($conn);
		exit;
	}
	header("Location: admin_medicine.php");
?>