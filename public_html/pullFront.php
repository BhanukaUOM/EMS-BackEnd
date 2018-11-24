<?php
	echo exec("cd ..");
	echo exec("cd ..");
	echo exec("cd EMS-FrontEnd");
	echo exec("git pull --force");
	echo exec("ng build");
	echo "build";
	echo exec("cd ..");
	echo exec("cd ems.aladinlabs.com");
	echo "Start Copy";
	echo exec("cp -a public_org/* public_html/");
	echo "Finished";
?>