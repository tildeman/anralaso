<?php
include 'data.php';
if (isset($_POST['ok'])) {
	include 'index2.php';
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Tử vi v0.1</title>
</head>
<body>
	<form method='post'>
		Giờ sinh (âm): <select name="gio">
			<?php
			foreach ($ymap as $yid => $nme) {
				?><option value='<?=($yid+2)%12+1?>'><?=$nme?></option><?php
			}
			?>
		</select><br>
		<input type="number" name="thg" placeholder="Tháng sinh (âm)"><br>
		<input type="number" name="ng" placeholder="Ngày sinh (âm)"><br>
		Năm sinh (âm): <select name='ahc'>
			<?php
			foreach ($pcns as $gc => $value) {
				?><option value='<?=$gc?>'><?=$value?></option><?php
			}
			?>
		</select>
		<select name='anc'>
			<?php
			foreach ($pymap as $gc => $value) {
				?><option value='<?=$gc?>'><?=$value?></option><?php
			}
			?>
		</select><br>
		Giới tính: <select name='gt'>
			<option value='n'>Nam</option>
			<option value='w'>Nữ</option>
		</select>
		<input type="submit" name="ok" value='OK'>
	</form>
</body>
</html>
