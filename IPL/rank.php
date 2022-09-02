<!DOCTYPE html>
<html>
<style >
	body {
 background-image: url("bg1.jpg");
 
}
	table{
		border: 2px white;
		font-size: 17px;


	}
	tr{
		border: 2px solid black;
		background-color:#F6F9F0;
	}
	th{
		border: 2px solid black;
		color: black;
	}
</style>
<head>
	<title>RANKS</title>
</head>
<body style="background-color:">
	<button style="background-color: darkblue; font-size: 20px;"><a href="admin1st.html" style="color: white;">Back</a></button>

	 <div style="margin-top:10px; style : center" ><table width="30%" tr align="center"><tr><th><p style="align-content: center;"><h2 style="color:">TEAM RANKING</h2></p></th></tr><tr><th>
	<table align="center">
		<tr>
			<th>RANK</th>
			<th>NAME</th>
			<th>RATING</th>
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");
		



		$query="select * from team order by rating desc";
		$result=mysqli_query($con,$query);
		[$i]=floor(1);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) {

			 $i=$i+1;
			$nm = $row["name"];
			$q="update team set rank='$i' where name='$nm'";
    
    		mysqli_query($con,$q);
			echo "<tr><th>"
			.floor($i)."</th><th>".
			$row["name"]."</th><th>".
			$row["rating"]."</th></tr>";
			}
		}?>
</table></th></tr></table></div>


<table width="30%" tr align="center"><tr><th>
	<p align="center" style="width: 100%; padding-right: 100px;" tr align="center;"><div style="align-content: center; background-color: ">
	<form action="update.php" method="POST">ENTER TEAM-RATING   <input type="number" name="rating" placeholder="129/130/..." align="right"><br>
	
	ENTER TEAMNAME    <input type="text" name="name" placeholder="RCB" align="padding-right"><br>
	<button style="font-size: 20px;">UPDATE</button></form>
</div></p></th></tr></table>





<table width="100%"><tr><th>
 <div style="margin-top: 20px; style : center" ></div>
 	<table width="100%"><tr><th><p style="align-content: center;"><h2 style="color: #51111">BATSMAN RANKING</h2></p></th></tr>
	<table align="center">
		<tr>
			<th>NAME</th>
			<th>RANK</th>
			<th>TEAM-NAME</th>
			<th>RUNS</th>
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");
		$query="select * from player  where type='batsman' order by runs desc";
		$result=mysqli_query($con,$query);[$i]=floor(1);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) { $i=$i+1;
				$nm = $row["cap_no"];
			$q="update player set rank='$i' where cap_no='$nm'";
    		mysqli_query($con,$q);
			echo "<tr><th>".$row["playername"]."</th><th>".
			floor($i)."</th><th>".
			$row["name"]."</th><th>".
			$row["runs"]."</th></tr>";
			}
		}?></table></th><th>




<table width="100%"><tr style="width: 100%"><th>
<p align="center">
	<h2> BOWLER RANKING
</h2>
</p></th></tr>
		<table align="center">
		<tr>
			<th>NAME</th>
			<th>RANK</th>
			<th>TEAM-NAME</th>
			<th>WICKETS</th>
			
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");
		$query="select * from player  where type='bowler' order by wickets desc";
		$result=mysqli_query($con,$query);[$i]=floor(1);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) { $i=$i+1;
				$nm = $row["cap_no"];
			$q="update player set rank='$i' where cap_no='$nm'";
    		mysqli_query($con,$q);
			
			echo "<tr><th>".$row["playername"]."</th><th>".
			floor($i)."</th><th>".
			$row["name"]."</th><th>".
			$row["wickets"]."</th></tr>";
			}
		}?></table></th><th>
		


<table width="100%"><tr style="width: 100%"><th>
<p align="center">
	<h2>ALL-ROUNDER RANKING
</h2>
</p></th></tr>

		<table align="center">
		<tr>
			<th>NAME</th>
			<th>RANK</th>
			<th>TEAM-NAME</th>
			<th>RUNS</th>
			<th>WICKETS</th>
		</tr>
		<?php
		$con=mysqli_connect("localhost","root","","cricket");

		$query="select * from player  where type='allrounder' order by (runs+wickets*2) desc";
		$result=mysqli_query($con,$query);[$i]=floor(1);
		if(mysqli_num_rows($result)>0)
		{
			while ($row=mysqli_fetch_assoc($result)) { $i=$i+1;
				$nm = $row["cap_no"];
			$q="update player set rank='$i' where cap_no='$nm'";
    		mysqli_query($con,$q);
			
			echo "<tr><th>".$row["playername"]."</th><th>".	
			floor($i)."</th><th>".
			$row["name"]."</th><th>".
			$row["runs"]."</th><th>".
			$row["wickets"]."</th></tr>";
			}
		}
	
		mysqli_close($con);
		?>
	</table></th></tr></table></div></th></tr></table>
	

<table width="40%" tr align="center" style="vertical-align: text-top;"><tr><th>
	<p align="center" style="width: 100%; padding-right: 100px; font-size: 20px;"><div style="align-content: center; background-color: ">
	<form action="pupdate.php" method="POST">
	ENTER PLAYERNAME    <input type="text" name="name" placeholder="sehwag"><br>
	ENTER RUNS        <input type="number" name="runs" placeholder="211"><br>
	ENTER WICKETS        <input type="number" name="wickets" placeholder="23"><br>
	ENTER NUMBER_OF_MATCHES        <input type="number" name="no_of_matches" placeholder="176"><br>
	
	<button style="font-size: 20px;">UPDATE</button></form>
</div></p></th></tr></table></th></tr></table>
	
</body>
</html>