<!DOCTYPE html>
<html>
<style >
	body {
 background-image: url("board.webp");
}
	table{
		border: 3px white;
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
	<title>BOARD</title>
</head>
<body>
	<button style="background-color: darkblue; font-size: 20px;"><a href="user1st.html" style="color: white;">Back</a></button>
	 <div style="margin-top:225px; style : center" >
	<table align="center">
		<tr>
			<th>BOARD NAME</th>
			<th>CHAIRMEN</th>
			<th>TEAM'S BOARD</th>
			<th>DOA</th>
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");
		$query="select * from cricket_boards";
		$result=mysqli_query($con,$query);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) {
			echo "<tr><th>".$row["board_name"]."</th>"."<th>".
			$row["chairman"]."</th><th>".
			$row["team"]."</th><th>".
			$row["DOA"]."</th></tr>";
			}
		}
		mysqli_close($con);
		?>
	</table>
</body>
</html>