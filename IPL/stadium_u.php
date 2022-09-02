<!DOCTYPE html>
<html>
<style >
	body {
 background-image: url("bg2.jpg");
 
}
	table{
		border: 3px solid black;
		font-size: 25px;
	}
	tr{
		border: 3px solid black;
		background-color:#F6F9F0;
	}
	th{
		border: 3px solid black;
	}
</style>
<head>
	<title>STADIUM</title>
</head>
<body>
	<button style="background-color: darkblue; font-size: 20px;"><a href="user1st.html" style="color: white;">Back</a></button>
	 <div style="margin-top:225px; style : center" >
	<table align="center">
		<tr>
			<th>STADIUM NAME</th>
			<th>CAPACITY</th>
			<th>DOI</th>
			<th>BOARD NAME</th>
			<th>TEAM'S STADIUM</th>
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");
		$query="select * from stadiums";
		$result=mysqli_query($con,$query);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) {
			echo "<tr><th>".$row["stadium_name"]."</th>"."<th>".
			$row["capacity"]."</th><th>".
			$row["DOI"]."</th><th>".
			$row["board_name"]."</th><th>".
			$row["team"]."</th></tr>";
			}
		}
		mysqli_close($con);
		?>
	</table>
</body>
</html>