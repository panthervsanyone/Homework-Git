<?php
//1

$arrmass = range(1,100,1);

function maximal($massiv){
   echo max($massiv);

   return true;
}

array_pop($arrmass);

maximal($arrmass);
echo '<br>';

//3


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
$query = "SELECT * FROM test_user";

if ($result = $mysqli->query($query)) {
    while ($obj = $result->fetch_assoc()) {
        $SESSION[] = $obj;

    }
    $result->close();
}
$mysqli->close();


/*echo '<pre>';
$ss = array_values($SESSION);
print_r($SESSION);
echo '</pre>';
*/

foreach ($SESSION as $arr) {
    if ($arr['gender'] == 'м') {

        $pos = strpos($arr['tel'], '8095');
        if ($pos === false) {
            echo "false-not items .<br>";
        } else {
            echo $arr['first_name'] . '<br>';
        }
    }

}




//2 Создать массив строк. Написать функцию поиска самой длинной строки по переданному массиву.
//удали самую большую строку
$mass = ['My','name','is','Artur'];

function maxlength($arr){
    if (strlen($arr[0]) > strlen($arr[1]) && strlen($arr[0]) > strlen($arr[2]) && strlen($arr[0]) > strlen($arr[3])) {
        echo $arr[0];
    } elseif (strlen($arr[1]) > strlen($arr[2]) && strlen($arr[1]) > strlen($arr[3])) {
        echo $arr[1];
    } elseif (strlen($arr[2]) > strlen($arr[3])) {
        echo $arr[2];
    } echo $arr[3];
}
unset($mass[3]);
echo maxlength($mass);


//2 lvl






