<?php
include 'vars.php';
$c= new mysqli($host,$username,$pass,$dbname);
$mres = $c->query('SELECT * FROM ymap');
foreach ($mres as $map) {
	$ymap[$map['id']]= $map['year']; //Nối mã với năm1
	$fymap[$map['year']]=$map['id']; //Nối năm1 với mã
}
$mres = $c->query('SELECT * FROM symap');
foreach ($mres as $map) {
	$symap[$map['id']]= $map['year']; //Nối mã với năm2
	$fsymap[$map['year']]=$map['id']; //Nối năm2 với mã
}
$mres = $c->query('SELECT * FROM pymap');
foreach ($mres as $map) {
	$pymap[$map['id']]= $map['year']; //Nối kt với năm1
}
$mres = $c->query('SELECT * FROM cns');
foreach ($mres as $map) {
	$cns[$map['year']]= $map['ymap']; //Nối năm2 với mệnh
}
$mres = $c->query('SELECT * FROM pcns');
foreach ($mres as $map) {
	$pcns[$map['getchar']]= $map['year']; //Nối kt với năm2
}
$mres = $c->query('SELECT * FROM duongam');
foreach ($mres as $map) {
	$dam [$map['cung']]= $map['laam']; //nối năm1 với d/â
}
$mres = $c->query('SELECT * FROM thiencan');
foreach ($mres as $map) {
	$tcan[$map['tcan']]= $map['laam']; //nối năm2 với d/â
}
$mres = $c->query('SELECT * FROM bangcuc');
foreach ($mres as $map) {
	$bcuc[$map['yearid']]= $map['cuc']; //Bảng cục :)
}
$mres = $c->query('SELECT * FROM bangnguhanh');
foreach ($mres as $map) {
	$nhanh[$map['cuc']]= array($map['sinh']=>'sinh',$map['khac']=>'khắc','ungvoi'=>$map['ungvoi']); //Xét mệnh<=>cục
}
$gt=array('n'=>'nam','w'=>'nữ'); //Giới tính
$mres = $c->query('SELECT * FROM bangmenh order by id asc');
foreach ($mres as $map) {
	$bmenh[$map['id']]=$map['destinyName']; //Nối mã với mệnh
	$fbmenh[$map['destinyName']]=$map['id']; //Nối mệnh với mã
}
?>