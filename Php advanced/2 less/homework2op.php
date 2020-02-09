<?php

$a=3;
echo $a . '<br>';

$a = 10;
$b = 2;
echo $a*$b.' '.$a/$b . '<br>';

echo $a+$b . '<br>';
echo $a-$b . '<br>';

$c = 15;
$d = 2;
echo $result = $c+$d . '<hr>';


$a = 10;
$b = 2;
$c=5;
echo $a+$b+$c . '<br>';

$a = 17;
$b = 10;
$c = $a-$b;
$d = 7;
echo $result =$c+$d . '<hr>';

//2 строки
echo $text = 'Привет,Мир!' . '<br>';

$text1 = 'Привет,';
$text2 = 'Мир!';
echo $text1.$text2 . '<hr>';

// 3)	Напишите скрипт, который считает количество секунд в часе, сутках, неделе, месяце из 30 дней.

$sec = 1;
$minute = $sec*60;
echo $hour = $minute*60 . '<br>' ;
echo $day = $hour*24 . '<br>';
echo $week = $day*7 . '<br>';
echo $month = $day*30 . '<br>';
echo '<hr>';
//4
$var=1;
$var +=12;
$var -=14;
$var*=5;
$var/=7;
$var++;
$var--;
echo $var .'<br>';

//5
$second=15;
$minute=56;
$hour=7;
echo "$hour:$minute:$second".'<br>';

//6
$text='Я'.' ';
$text.='хочу'.' ';
$text.='знать'.' ';
$text.='php'.' ';
echo $text.'<hr>';

//7

$bar=10;
$foo= "bar";
echo $$foo .'<hr>';

// Арифметика посложнее
$x = 10;
$y = 5;
echo $x+$y.' '. $x*$y . '<br>';

echo pow($x,2)+pow($y,2) . '<br>';

$x = 10;
$y = 5;
$z = 3;

echo ($x+$y+$z)/3 . '<br>';

echo ($x+1)-2*($z-2*$x+$y) . '<br>';

echo $x%5 . '<br>';
echo $x%3 . '<br>';
echo $x*0.3 . '<br>';
echo $x*1.2 . '<br>';

echo ($x*0.4)+($y*0.84) . '<br>';

$m = 345;
$n = array(3,4,5);
echo array_sum($n) . '<br>';

$x = 345;
$n = 305;

echo strrev($n) . '<br>';










