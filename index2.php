<?php
$gio=$hsinh=$_POST['gio'];
$thg=$tsinh=$_POST['thg'];
$nsinh=$_POST['ng'];
$ahc=$pcns[$_POST['ahc']];
$anc=$pymap[$_POST['anc']];
$nw=$gt[$_POST['gt']];
$m=$_POST['thg']-$_POST['gio'];
if ($m<=0) {
	$m+=12;
}
$t=mysqli_fetch_array($c->query("SELECT thancu from cungthan where gio='".(($gio+9)%12)."'"))['thancu'];
$t+=1;
$basen=$pcns[$_POST['ahc']].' '.$pymap[$_POST['anc']];
$based=$symap[($fsymap[$cns[$ahc]]+$m-1)%10].' '.$ymap[($m-1)%12];
$hcan=$cns[$ahc].' Dần';
$hcannum=array($fsymap[$cns[$ahc]],0);

foreach ($bmenh as $id => $dname) {
	$tid=($id-$m+12)%12;
	if ($tid<=0) {
		$tid+=12;
	}
	#(($id-$m+12)%12==$t?'&lt;Thân&gt;':'')
	$same[$tid]=array(($hcannum[1]+$id+11)%12,$symap[($hcannum[0]+$id+9)%10].' '.$ymap[($hcannum[1]+$id+11)%12]);
}
$ad=($dam[$anc]?'Âm':'Dương').' '.$nw;
echo ($dam[$anc]?'Âm':'Dương').' '.$nw.'<br>';
echo 'Âm dương '.($tcan[$ahc]==$dam[$anc]?'thuận':'nghịch'),' lí<br>';

$nb=$bcuc[$basen];
$db=$bcuc[$based];
$nc=(isset($nhanh[$nb][$db])?$nhanh[$nb][$db]:'');
$dc=(isset($nhanh[$db][$nb])?$nhanh[$db][$nb]:'');
if ($nb==$db) {
	echo 'Mệnh cục bình hòa';
}elseif ($nc=='khắc') {
	echo 'Mệnh khắc cục';
}elseif ($dc=='khắc') {
	echo 'Cục khắc mệnh';
}elseif ($dc='sinh') {
	echo 'Cục sinh mệnh';
}elseif ($nc='sinh') {
	echo 'Mệnh sinh cục';
}
echo '<hr>';
#Cứ từ từ
$sinh=$ahc.' '.$anc;
$menh=$symap[($hcannum[0]+$m)%10].' '.$ymap[($hcannum[1]+$m)%12];
$than=$symap[($hcannum[0]+$t)%10].' '.$ymap[($hcannum[1]+$t)%12];
include 'ansao/ansao.php';

foreach ($an as $name => $ym) {
	$schinh[$ym][]=$name;
}
foreach ($anp as $name => $ym) {
	$sphu[$ym][]=$name;
}
foreach ($same as $id => $dname) {
	if ($id%12==$mk['Triệt']) {
		echo '(Triệt)<br>';
	}
	if ($id%12==$mk['Tuần']) {
		echo '(Tuần)<br>';
	}
	echo '[';
	switch (($dam[$anc]?'Âm':'Dương').' '.$nw) {
		case 'Âm nam':
		case 'Dương nữ':
			echo (13-$id)%12;
			break;
		
		case 'Âm nữ':
		case 'Dương nam':
			echo (($id+11)%12);
			break;
	}
	echo $nhanh[$bcuc[$based]]['ungvoi'].'] ';
	echo $bmenh[$id].(($id-$m+13)%12==$t?'&lt;Thân&gt;':'').':<br>';
	if (isset($schinh[$dname[0]])) {
		foreach ($schinh[$dname[0]] as $sc => $stuff) {
			echo '<b>'.$stuff.'</b><br>';
		}
	}else {
		echo '<b>Ko có chính tinh</b>';
	}
	foreach ($sphu[$dname[0]] as $sp => $stuff) {
		echo '<i>'.$stuff.'</i><br>';
	}
}
?><hr>