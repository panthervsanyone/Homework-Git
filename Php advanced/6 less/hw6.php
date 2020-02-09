<?php


$host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'test';

$mysqli = new mysqli($host, $db_user, $db_pass, $db_name);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$SESSION = [];
$query = "SELECT * FROM test_user"; //ORDER BY last_name сортировка по алфавиту по имени

if ($result = $mysqli->query($query)) {
    while ($obj = $result->fetch_assoc()) {
        $SESSION[] = $obj;

    }
    $result->close();
}
$mysqli->close();
/*
function message($name){
    return 'Поздравляю, '. $name . ' ты прекрасна,как весна';
    }




foreach ($SESSION as $name) {
    if ($name['gender'] == 'ж') {
        echo message($name ['last_name']);
        echo '<br>';
    }
}
*/
//2
//function call(){
//
//       echo func_num_args() . '<br>';
//
//
//}
//call(1,2,3,4,5);


/* for
function forme($x)
{
    for ($i = $x; $i <= 7; $i++) {
        if ($i == 1) {
            echo 'Monday';
        }
        elseif ($i == 2) {
            echo 'Tuesday';
        }
        elseif ($i == 3) {
            echo 'Wednesday';
        }
        elseif ($i == 4) {
            echo 'Thursday';
        }
        elseif ($i == 5) {
            echo 'Friday';
        }
        elseif ($i == 6) {
            echo 'Saturday';
        }
        elseif ($i == 7) {
            echo 'Sunday';
        }
    }
}

echo forme(7);
*/
/*
function whileme($x){
    $i = $x;
    while ($i<=7){
        break;
    } if ($i == 1) {
    echo 'Monday';
}
elseif ($i == 2) {
    echo 'Tuesday';
}
elseif ($i == 3) {
    echo 'Wednesday';
}
elseif ($i == 4) {
    echo 'Thursday';
}
elseif ($i == 5) {
    echo 'Friday';
}
elseif ($i == 6) {
    echo 'Saturday';
}
elseif ($i == 7) {
    echo 'Sunday';
}
}

echo whileme(1);
*/

//4
/*
$arr = [6, 5, 4, 1, 0 , 77, 45];
$count = count($arr);

for ($i = 0; $i <= $count; $i++){
    for ($j = $i + 1; $j <= $count; $j++){
        if ($arr[$i] > $arr[$j]) {
            $smena = $arr[$j];
            $arr[$j] = $arr[$i];
            $arr[$i] = $smena;
        }
    }
}
echo "<pre>";
print_r($arr);
echo "</pre>";
*/

// Курьер
function courier($a,$b,$c){
    $nujnietaj= $a/$c;
    $ressnujnietaj = (int) $nujnietaj;
    $nujnipodezd= $a/($b*$c); // Не закончил до конца с этажами


    echo 'Нужно подняться на ' . $ressnujnietaj . ' этаж,чтобы найти квартиру ' . $a ;

}
echo courier(32,4,6);
//$a = номер квартиры
//$b = этажность дома
//$c = количество квартир на этаже


$x = 9; // этажность дома
$y = 4; // кол кварттр на этаже
$z = 1; //  искомая квартира

$k = $z - 1; // уменьшаем искомую кв на -1
$l = $x * $y; // сразу посчитаем кол квартир на подьезд

$p = $k / $l + 1;
$e = ($k - ((int)$p -1) * $l) / $y + 1;

var_dump([(int)$p, (int)$e]);
