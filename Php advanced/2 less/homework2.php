<?php
//1 задание
$lang = 'en';
$arrRu = ['пн', 'вт', 'ср', 'чт', 'пт' ,'сб', 'вс'];
$arrEn = ['mn', 'ts', 'wd', 'th', 'fr', 'st', 'sn'];

print_r($lang == 'ru' ? $arrRu : $arrEn);
echo '<br>';

if ($lang == 'ru'){
    print_r($arrRu);
}else
    print_r($arrEn);

switch ($lang){
    case $lang == 'ru';
        print_r($arrRu);
        break;
    case $lang == 'en';
     print_r($arrEn);
     break;
}
echo '<hr>';
//2 задача с временами года
$month = rand(1,12);

if ($month<3 || $month == 12 ) {
    echo 'Winter';
}elseif ($month>2 && $month<6){
    echo 'Spring';
}elseif ($month>5 && $month<9) {
    echo 'Summer';
}else echo 'Autumn';
echo '<br>';

switch ($month) {
    case ($month<3 || $month == 12) ;
        echo 'Winter';
        break;
    case ($month>2 && $month < 6) ;
        echo 'Spring';
        break;
    case ($month>5 && $month < 9) ;
        echo 'Summer';
        break;
    case ($month>8 && $month < 12) ;
        echo 'Autumn';
        break;

}
echo '<br>';


echo ($month<3 || $month == 12) ? 'Winter':'';
echo ($month > 2 && $month < 6) ? 'Spring' : '';
echo ($month > 5 && $month < 9) ? 'Summer' : '';
echo ($month > 8 && $month < 12) ? 'Autumn' : '';

echo '<hr>';

//3 задача с часами
$minutes = rand(1,59);
if ($minutes > 0 && $minutes <15 ){
    echo 'first quoter';
}elseif ($minutes >= 15 && $minutes < 30){
    echo 'second quoter';
}elseif ($minutes >= 30 && $minutes < 45){
    echo 'third quoter';
}else
    echo 'fourth quoter';

echo '<br>';
switch ($minutes){
    case ($minutes > 0 && $minutes <15 );
    echo 'first quoter';
    break;
    case ($minutes >= 15 && $minutes <30 );
        echo 'second quoter';
        break;
    case ($minutes >= 30 && $minutes < 45 );
        echo 'third quoter';
        break;
    case ($minutes >= 45 && $minutes < 60 );
        echo 'fourth quoter';
        break;

}
echo '<br>';

echo ($minutes > 0 && $minutes < 15) ? 'first quoter' : '';
echo ($minutes >= 15 && $minutes < 30) ? 'second quoter' : '';
echo ($minutes >= 30 && $minutes < 45) ? 'third quoter' : '';
echo ($minutes >= 45 && $minutes <= 59) ? 'fourth quoter' : '';

echo '<hr>';

//4 задача

$a=3;

if ($a == 0 || $a == 2){
    echo $a+7;
}else echo $a/10;

echo '<br>';

switch ($a) {
    case ($a == 0 || $a == 2);
        echo $a + 7;
        break;
    case ($a != 0 || $a != 2);
        echo $a / 10;
        break;
}
echo '<br>';

echo ($a == 0 || $a == 2) ? $a+7 : $a/10;

echo '<hr>';

//5 задача
$a = 3;
$b = 5;

if ($a <= 1 && $b>=3){
    echo $a+$b;
}else echo $a-$b;

echo '<br>';
switch ($a && $b){
    case ($a <= 1 && $b>=3);
    echo $a+$b;
    break;
    case ($a>1 || $b<3);
    echo $a-$b;
    break;

}
echo '<br>';

echo ($a <= 1 && $b>=3) ? $a+$b : $a-$b;

echo '<hr>';

//FIZZ-BUZZ задание
$numberfb = 20;
if ($numberfb%2==0 && $numberfb%5==1){
    echo 'Fizz';
}elseif ($numberfb%5==0 && $numberfb%2==1){
    echo 'Buzz';
}elseif ($numberfb%2==0 && $numberfb%5==0){
    echo 'Fizz-Buzz';
}else echo 'Game over';

echo '<hr>';


for ($number = 1; $number <=18; $number++) {


    if ($number % 2 == 0 && $number % 5!=0) {
        echo 'Fizz';
    } elseif ($number % 5 == 0 && $number % 2 == 1) {
        echo 'Buzz';
    } elseif ($number % 2 == 0 && $number % 5 == 0) {
        echo 'Fizz-Buzz';
    } else echo $number;
    echo '<br>';
};