<?php
//to connect supply with ip/host, username, pass and db name
$con = mysqli_connect("127.0.0.1","root","","postgres");

 //Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>