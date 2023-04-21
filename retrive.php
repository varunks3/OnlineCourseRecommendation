<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	<style type="text/css">
		table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;

}

tr:nth-child(even) {
    background-color: white;
}
.bckbtn{
  float: right;
  background-color: green;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;

  }
	</style>
</head>
<body>
  <button class="bckbtn"><a href="retrive.html">BACK</a></button><br>
<?php

$username='root';
$password='';
$db='project024';
$conn=mysqli_connect('localhost',$username,$password,$db);
if(!$conn){
 die('Could not Connect My Sql:' .mysql_error());
}
if (!mysqli_select_db($conn,'project024')) {
		  	
  		echo "database not selected";
  }
  $Request=$_GET['Request'];

  $sql=mysqli_query($conn,"SELECT * FROM courses c,c_sources s WHERE c.C_name=s.C_name AND c.Subject='$Request'");

?>
<?php
if (mysqli_num_rows($sql) > 0) {
?>
<h1><?php echo $Request; ?></h1>
  <table>
  
  <tr>
    <th>Course_name</th>
    <th>Channel</th>
    <th>Video</th>
    <th>Host Name</th>
  </tr>
<?php

$i=0;
while($row = mysqli_fetch_array($sql)) {
?>
<tr>
    <td><?php echo $row["C_name"]; ?></td>
    <td><?php echo $row["channel"]; ?></td>
    <td><?php echo $row["videoplaylists"]; ?></td>
    <td><?php echo $row["host_name"]; ?></td>
</tr>
<?php
$i++;
}
?>
</table>
 <?php
}
else{
    echo "No result found";
}
?>
</body>
</html>