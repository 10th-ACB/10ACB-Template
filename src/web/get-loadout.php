<?php

	if (isset($_GET['ln'])) {
		
		require "dbinc.php";

		$sql    = "SELECT loadout FROM arsenal WHERE code = '" . $_GET['ln'] . "'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc()) {
				echo $row["loadout"];
			}
		} else { echo "hint 'Invalid loadout ID'"; }
		
		$conn->close();
		
	} else { echo "hint 'No loadout ID provided, closing.'"; }
	
?>