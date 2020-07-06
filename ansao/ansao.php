<?php
include "ansaodb.php";
$an=array();
# An các sao chính
$a=(($nhanh[$bcuc[$menh]]['ungvoi'])-$nsinh%($nhanh[$bcuc[$menh]]['ungvoi']))%($nhanh[$bcuc[$menh]]['ungvoi']);
$b=($nsinh+$a)/($nhanh[$bcuc[$menh]]['ungvoi']);
if ($a%2==1) {
	$tv=((($b-1)%12)-$a+12)%12;
} elseif ($a==0) {
	$tv=($b-1)%12;
} else {
	$tv=($b-1+$a)%12;
}
$an['Tử Vi']=$tv;
$an['Liêm Trinh']=($tv+4)%12;
$an['Thiên Đồng']=($tv+7)%12;
$an['Vũ Khúc']=($tv+8)%12;
$an['Thái Dương']=($tv+9)%12;
$an['Thiên Cơ']=($tv+11)%12;
switch ($an['Tử Vi']) {
	case 0:
	case 6:
		$an['Thiên Phủ']=$an['Tử Vi'];
		break;
	default:
		$an['Thiên Phủ']=12-$an['Tử Vi'];
		break;
}
$an['Thái Âm']=($an['Thiên Phủ']+1)%12;
$an['Tham Lang']=($an['Thiên Phủ']+2)%12;
$an['Cự Môn']=($an['Thiên Phủ']+3)%12;
$an['Thiên Tướng']=($an['Thiên Phủ']+4)%12;
$an['Thiên Lương']=($an['Thiên Phủ']+5)%12;
$an['Thất Sát']=($an['Thiên Phủ']+6)%12;
$an['Phá Quân']=($an['Thiên Phủ']+10)%12;
$anp=array();
# An các sao phụ
$anp['Tả Phù']=($tsinh+1)%12;
$anp['Hữu Bật']=($anp['Tả Phù']+6)%12;
$anp['Văn Khúc']=($hsinh+1)%12;
$anp['Văn Xương']=(11+(11-$anp['Văn Khúc']))%12;
$r=$c->query("SELECT * FROM an1619 WHERE row='".explode(' ',$sinh)[0]."'");
foreach ($r as $sao) {
	$anp[$sao['col']]=(isset($an[$sao['val']])?$an[$sao['val']]:$anp[$sao['val']]);
}
$anp['Lộc Tồn']=$locton[$fsymap[explode(' ',$sinh)[0]]];
switch ($ad) {
	case 'Âm nam':
	case 'Dương nữ':
		$o=11;
		break;
	case 'Dương nam':
	case 'Âm nữ':
		$o=1;
		break;
}
$anp['Bác Sĩ']=$anp['Lộc Tồn'];
$anp['Lực Sĩ']=($anp['Bác Sĩ']+$o)%12;
$anp['Thanh Long']=($anp['Lực Sĩ']+$o)%12;
$anp['Tiểu Hao']=($anp['Thanh Long']+$o)%12;
$anp['Tướng Quân']=($anp['Tiểu Hao']+$o)%12;
$anp['Tẩu Thư']=($anp['Tướng Quân']+$o)%12;
$anp['Phi Liêm']=($anp['Tẩu Thư']+$o)%12;
$anp['Hỉ Thần']=($anp['Phi Liêm']+$o)%12;
$anp['Bệnh Phù']=($anp['Hỉ Thần']+$o)%12;
$anp['Đại Hao']=($anp['Bệnh Phù']+$o)%12;
$anp['Phục Binh']=($anp['Đại Hao']+$o)%12;
$anp['Quan Phủ']=($anp['Phục Binh']+$o)%12;
$anp['Lưu Niên Văn Tinh']=($anp['Lộc Tồn']+3)%12;
$anp['Đường Phù']=($anp['Lưu Niên Văn Tinh']+2)%12;
$anp['Quốc Ấn']=($anp['Đường Phù']+3)%12;
$anp['Đà La']=($anp['Lộc Tồn']+11)%12;
$anp['Kình Dương']=($anp['Lộc Tồn']+1)%12;
$anp['Thái Tuế']=$fymap[explode(' ',$sinh)[1]];
$anp['Thiếu Dương']=($anp['Thái Tuế']+1)%12;
$anp['Tang Môn']=($anp['Thiếu Dương']+1)%12;
$anp['Thiếu Âm']=($anp['Tang Môn']+1)%12;
$anp['Quan Phù']=($anp['Thiếu Âm']+1)%12;
$anp['Tử Phù']=($anp['Quan Phù']+1)%12;
$anp['Tuế Phá']=($anp['Tử Phù']+1)%12;
$anp['Long Đức']=($anp['Tuế Phá']+1)%12;
$anp['Bạch Hổ']=($anp['Long Đức']+1)%12;
$anp['Phúc Đức']=($anp['Bạch Hổ']+1)%12;
$anp['Điếu Khách']=($anp['Phúc Đức']+1)%12;
$anp['Trực Phù']=($anp['Điếu Khách']+1)%12;
$anp['Tràng Sinh']=$trangsinh[$nhanh[$bcuc[$menh]]['ungvoi']];
$o=1;
if ($ad=='Âm nam'||$ad='Dương Nữ') {
	$o+=10;
}
$anp['Mộc Dục']=($anp['Tràng Sinh']+$o)%12;
$anp['Quan Đới']=($anp['Mộc Dục']+$o)%12;
$anp['Lâm Quan']=($anp['Quan Đới']+$o)%12;
$anp['Đế Vượng']=($anp['Lâm Quan']+$o)%12;
$anp['Suy']=($anp['Đế Vượng']+$o)%12;
$anp['Bệnh']=($anp['Suy']+$o)%12;
$anp['Tử']=($anp['Bệnh']+$o)%12;
$anp['Mộ']=($anp['Tử']+$o)%12;
$anp['Tuyệt']=($anp['Mộ']+$o)%12;
$anp['Thai']=($anp['Tuyệt']+$o)%12;
$anp['Dưỡng']=($anp['Thai']+$o)%12;
$anp['Thiên Khôi']=$thienkhoi[$fsymap[explode(' ',$sinh)[0]]];
$anp['Thiên Việt']=$thienviet[$fsymap[explode(' ',$sinh)[0]]];
$anp['Cô Thần']=($anp['Thái Tuế']+(3-($anp['Thái Tuế'])%3))%12;
$anp['Quả Tú']=($anp['Cô Thần']+8)%12;
$anp['Long Trì']=(($fymap[explode(' ',$sinh)[1]]+2)%12+2)%12;
$anp['Phượng Các']=(11+(11-$anp['Long Trì']))%12;
$anp['Tam Thai']=($tsinh+$nsinh-1+1)%12;
$anp['Bát Tọa']=($anp['Tam Thai']+6)%12;
$anp['Ân Quang']=($anp['Văn Xương']+$nsinh+10)%12;
$anp['Thiên Quý']=(11+(11-$anp['Ân Quang']))%12;
$anp['Thiên Khốc']=(4-$fymap[explode(' ',$sinh)[1]]+10)%12;
$anp['Thiên Hư']=(4+$fymap[explode(' ',$sinh)[1]]+2)%12;
$anp['Thiên Tài']=($fymap[explode(' ',$menh)[1]]+($fymap[explode(' ',$sinh)[1]]+2))%12;
$anp['Thiên Thọ']=($fymap[explode(' ',$than)[1]]+($fymap[explode(' ',$sinh)[1]]+2))%12;
$anp['Hồng Loan']=(1-($fymap[explode(' ',$sinh)[1]]+14))%12;
$anp['Thiên Hỉ']=($anp['Hồng Loan']+6)%12;
$anp['Thiên Quan']=$thienquan[($fsymap[explode(' ',$sinh)[0]])];
$anp['Thiên Phúc']=$thienphuc[($fsymap[explode(' ',$sinh)[0]])];
$anp['Thiên Hình']=(6+$tsinh)%12;
$anp['Thiên Riêu']=$anp['Thiên Y']=($anp['Thiên Hình']+4)%12;
$anp['Thai Phụ']=($anp['Văn Khúc']+2)%12;
$anp['Phong Cáo']=($anp['Văn Khúc']+10)%12;
$anp['Thiên Giải']=($anp['Thiên Hình']+11)%12;
$anp['Địa Giải']=($anp['Thiên Giải']+11)%12;
$anp['Thiên La']=2;
$anp['Địa Võng']=8;
$anp['Thiên Thương']=$fymap[explode(' ',$menh)[1]]+5;
$anp['Thiên Sứ']=$fymap[explode(' ',$menh)[1]]+7;
$ra=mysqli_fetch_array($c->query('SELECT * FROM tamhop WHERE id="'.$fymap[explode(' ',$sinh)[1]].'"'));
$rb=mysqli_fetch_array($c->query("SELECT * FROM tamhop WHERE pos='2' and colpos='".$ra['colpos']."'"))['id'];
$anp['Thiên Mã']=($rb-($rb%3)+12)%12;
$anp['Hoa Cái']=($anp['Thiên Mã']+2)%12;
$anp['Kiếp Sát']=($anp['Hoa Cái']+1)%12;
$anp['Đào Hoa']=($anp['Kiếp Sát']+4)%12;
$anp['Phá Toái']=$phatoai[($fymap[explode(' ',$sinh)[1]]+2)%3];
$anp['Đẩu Quân']=($fymap[explode(' ',$sinh)[1]]-$tsinh+$hsinh)%12;
$anp['Lưu Hà']=$luuha[$fsymap[explode(' ',$sinh)[0]]];
$anp['Địa Kiếp']=(8+$hsinh)%12;
$anp['Địa Không']=(10-$hsinh+12)%12;
switch ($ad) {
	case 'Âm nam':
	case 'Dương nữ':
		$o=11;
		$p=1;
		break;
	case 'Dương nam':
	case 'Âm nữ':
		$o=1;
		$p=11;
		break;
}
$intens=mysqli_fetch_array($c->query("SELECT * FROM htlt where id='".$fymap[explode(' ',$sinh)[1]]."'"),MYSQLI_ASSOC);
$anp['Hỏa Tinh']=($intens['p1']+($hsinh*$o)+$p)%12;
$anp['Linh Tinh']=($intens['p2']+($hsinh*$p)+$o)%12;
$anp['Vong Thần']=($anp['Kiếp Sát']+6)%12;
#An Tuần, Triệt
$mk['Triệt']=$triet[$fsymap[explode(' ',$sinh)[0]]];
$antuan=(13-$fsymap[explode(' ',$sinh)[0]])%10;
$mk['Tuần']=($fymap[explode(' ',$sinh)[1]]+$antuan+2)%12;
?>