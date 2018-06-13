<?php
$my['host']	="c2-54-235-146-51.compute-1.amazonaws.com";
$my['user']	="hedxwjfvbitpdk";
$my['pass']	= "efd660a9b19740ab9e3ca6c723679e5300748a8cd6db3d59481dd076653da5ed";
$my['dbs']	= "dd83olvampah2d";

$db = parse_url(getenv("postgres://hedxwjfvbitpdk:efd660a9b19740ab9e3ca6c723679e5300748a8cd6db3d59481dd076653da5ed@ec2-54-235-146-51.compute-1.amazonaws.com:5432/dd83olvampah2d"));
$db["dd83olvampah2d"] = ltrim($db["dd83olvampah2d"], "/");

$conn = pg_connect(getenv("postgres://hedxwjfvbitpdk:efd660a9b19740ab9e3ca6c723679e5300748a8cd6db3d59481dd076653da5ed@ec2-54-235-146-51.compute-1.amazonaws.com:5432/dd83olvampah2d"))

$koneksi	= mysql_connect($my['host'], 
							$my['user'], 
							$my['pass']);
if (! $koneksi) {
  echo "Gagal koneksi boss..!";
  mysql_error();
}
mysql_select_db($my['dbs'])
	 or die ("Database nggak ada tuh".mysql_error());

?>
