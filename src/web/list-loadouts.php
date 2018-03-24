<?php

	require "dbinc.php";

	$sql = "SELECT code, name FROM arsenal WHERE scope = 'public'";
	$result = $conn->query($sql);
	
?>

<ul>
	<?php
		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc()) {
				echo "<li><b>[".$row["code"]."]</b> ".$row["name"]."</li>";
			}
		}
	?>
</ul>