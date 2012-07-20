<html>
<head>
	<script type="text/javascript" src='https://www.google.com/jsapi'></script>
	<script type="text/javascript">
	

			<?php 
				$username_db = "root";
				$password_db = "";
				$database = "geochart_db";
				

				$con = mysql_connect('localhost', $username_db, $password_db);

				if(!$con){
					die('Could not connect to database');
				}
				mysql_select_db($database,$con);
				 
				$myFile = "data.js";	
				$data = array();
				

				$fh=fopen($myFile,'w')or die("cant open file");

				$result = mysql_query("SELECT * FROM cities");
				array_push($data,array('Country', 'Members', 'Population'));

				while($row = mysql_fetch_array($result))
				{
					array_push($data, array($row['name'],(int)$row['num_of_users'],(int)$row['population']));
					
				}

				echo $data;

			
				
				

			 ?>
			


			google.load('visualization', '1', {'packages': ['geochart']});
     		google.setOnLoadCallback(drawRegionsMap);

		function drawRegionsMap()
		{
			var data = google.visualization.arrayToDataTable(<?php echo json_encode($data); ?>);

			
			var options= {
				region: 'RS',
				displayMode: 'markers',
				colorAxis: {colors: ['#95B9C7', '#E42217']}
			};

			var chart = new google.visualization.GeoChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		};
	</script>
	
	<title>Insert data</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h2>Insert data</h2>
	<fieldset>
	<form action="http://localhost/geochart_example/insert_to_db.php" method="post">
		
				<label>First name:</label>
				<input type="text" name="fname" />
				
				<label>Last name:</label>
				<input type="text" name="lname" />
				
				<label>Phone:</label>
				<input type="text" name="phone" />
				
				<label>Mobile:</label>
				<input type="text" name="mobile" />
				
				<label>Email:</label>
				<input type="text" name="email" />
				
				<label>Web:</label>
				<input type="text" name="web" />
				
				<label>City:</label>
				<select name='city'>
					<option value="Beograd">Beograd</option>
					<option value="Novi Sad">Novi Sad </option>
					<option value="Kragujevac">Kragujevac </option>
					<option value="Nis">Nis</option>
					<option value="Subotica">Subotica</option>
					<option value="Zrenjanin">Zrenjanin</option>
					<option value="Pancevo">Pancevo</option>
					<option value="Cacak">Cacak</option>
					<option value="Kraljevo">Kraljevo</option>
					<option value="Smederevo">Smederevo</option>
					<option value="Novi Pazar">Novi Pazar</option>
					<option value="Valjevo">Valjevo</option>
					<option value="Krusevac">Krusevac</option>
					<option value="Vranje">Vranje</option>
					<option value="Sabac">Sabac</option>
					<option value="Uzice">Uzice</option>
					<option value="Sombor">Sombor</option>
					<option value="Pozarevac">Pozarevac</option>
					<option value="Zajecar">Zajecar</option>
					<option value="Sremska Mitrovica">Sremska Mitrovica</option>
					<option value="Jagodina">Jagodina</option>
					<option value="Loznica">Loznica</option>

				</select>
				
				<input type="submit" value="Submit" name="submit">
		</form>		
	</fieldset>
	<div id="chart_div"  height:500px"></div>
	<h2></h2>
</body>
</html>