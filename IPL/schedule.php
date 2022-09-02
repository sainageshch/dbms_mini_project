<!DOCTYPE html>
<html>
<style >
	
	body{background-image:url("./bg5.jpg");
	width:100%;
height: 100%;
}
	table{
		border: 3px solid white;
		font-size: 25px;

	}
	tr{
		border: 3px solid white;
		background-color:white;
		color:black;

	}
	th{
		border: 3px solid black;
	}
</style>
<head><p>
	<title>SCHEDULES</title>
</head>
<body>
	<button style="background-color: darkblue; font-size: 20px;"><a href="admin1st.html" style="color: white;">Back</a></button>
	 <div style="margin-top:115px; style : center" >
	<table align="center">
		<tr>
			<th>DATE</th>
			<th>TEAM 1</th>
			<th>TEAM 2</th>
			<th>MATCH NUMBER</th>
			
		
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");
		$query="select * from schedules order by match_no";
		$result=mysqli_query($con,$query);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) {
			echo "<tr><th>".$row["date"]."</th><th>".
							$row["team1"]."</th><th>".
							$row["team2"]."</th><th>".
							$row["match_no"]."</th>";
							
						
}
		}
		
		mysqli_close($con);
		?>
		</table>
		

		
		 <form action="tt.php" method="post"><p align="center">
            <p style="text-align: center; font-size: 25px;"><b>Enter Match Number to retrieve players</b>
            <input type="number" name="match_no" style="width: 300;height: 25;"><br><br>
            <input type="submit" style="float:center; font-size: 20px;" value="Submit">
            </p></p>
    </form>




</body>
</html>