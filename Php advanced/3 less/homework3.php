<?php
//2


function units($first,$second,$third, $count ){
    if ($count !=0 && $count <2){
        echo $count .' '. $first;
    }elseif ($count > 1 && $count < 5){
        echo $count.' '.$second;
    }else echo $count.' '.$third;
    return ;
    };

echo units('ноутбук','ноутбука', 'ноутбуков',45000);
echo '<br>';

//7
//исправленный вариант
$a=1;
function m_func(){
    $b=2;
    echo $b;
}
$c=3;
echo $a.'<br>';
echo m_func().'<br>';
echo $c . '<br>';

//11

function sa($mass){
    echo array_sum($mass)/count($mass);
}

$arr = range(1,15);
echo sa($arr).'<br>';

//6
$x = 1;
$y = 2;
$z = 3;
unset($x,$y,$z);
echo $y;

//9

function doubleX($q,$w){
    echo $q*$w;
}

echo doubleX(4,5) . '<br>';

//4

global $p,$o;
$p= 1;
$o = 3;

function task4(){
    global $p,$o;
    echo $p+$o;
}

echo task4() . '<br>';

//5
// при каждом вызове функции ее значение инкрементируется на величину переменной $a
global $a;
$a = 1;
function task5(){
    global $a;
    static $b = 0;
    echo $b+=$a;
    return;

}

echo task5();
echo task5();
echo task5();
echo '<br>';


//6
$g = 3;
$h = 4;
$k = 5;
unset($g);
echo $g;
function task6(){
    unset ($h,$k);
}

echo $h;
echo $k;

echo '<br>';

//10 Задача заключалась показать,что при обращении по ссылке значения этих 2 переменных не изменяться,а 3я переменная
//будет меняться.
$g = 3;
$h = 4;
$k = 5;

echo $g*$h*$k . '<br>';

function task10(&$g,&$h,$p) {
$gx = 5;
$hx = 6;
$p = 7;
echo $gx*$hx*$p;
}

echo task10($g,$h,$k);
echo '<br>';


//3 есть вариант гораздо проще, не знаю как его применить в функции
/*
 *$monthsList = array(
    "1"=>"Январь","2"=>"Февраль","3"=>"Март",
    "4"=>"Апрель","5"=>"Май", "6"=>"Июнь",
    "7"=>"Июль","8"=>"Август","9"=>"Сентябрь",
    "10"=>"Октябрь","11"=>"Ноябрь","12"=>"Декабрь");

$month = $monthsList[date("3")];

echo $month;
 */

function editData ($data){
    $month = array (
        "01"=>"января",
        "02" => "февраля",
        "03" => "марта",
        "04" => "апреля",
        "05" => "мая",
        "06" => "июня",
        "07" => "июля",
        "08" => "августа",
        "09" => "сентября",
        "10" => "октября",
        "11" => "ноября",
        "12" =>"декабря"
    );
    if($data == 1){
        echo 'января';
    }elseif ($data == 2) {
        echo 'февраля';
    }elseif ($data == 3) {
        echo 'марта';
    }elseif ($data == 4) {
        echo 'апреля';
    }elseif ($data == 5) {
        echo 'мая';
    }elseif ($data == 6) {
        echo 'июня';
    }elseif ($data == 7) {
        echo 'июля';
    }elseif ($data == 8) {
        echo 'августа';
    }elseif ($data == 9) {
        echo 'сентября';
    }elseif ($data == 10) {
        echo 'октября';
    }elseif ($data == 11) {
        echo 'ноября';
    }elseif ($data == 12) {
        echo 'декабря';
    } else echo $data.' '.'месяц?'.' '.'Существует всего 12';
// если писать через if,тогда и массив не нужен,но код получается
// громоздкий


}
echo editDATA(25);
echo '<br>';

// Рекурсия

function fibonacci($n)
{
    if ($n < 3) {
        return 1;
    } else {
        return fibonacci($n - 1) + fibonacci($n - 2);
    }
}
    for ($n = 1; $n <= 16; $n++) {
        echo(fibonacci($n) . ", ");
    }

    //1 

function df($MySTR, $FILE = '/mylog.txt')
{
    $date = date("Y-m-d G:i:s");
    $fp = fopen($_SERVER["DOCUMENT_ROOT"] . $FILE, 'a+');
    $str = $date . " " . print_r($MySTR, true) . "\r\n";
    fwrite($fp, $str);
    fclose($fp);
};
