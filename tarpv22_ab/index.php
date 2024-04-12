<?php
require('conf.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>TARpv22 veebilehed</title>

    <link rel="stylesheet" type="text/css" href="style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script type="text/javascript">

        //показать/скрыть списки при нажатии на пнопки
        $(document).ready(function() {
            $("#nupp_mehed").click(function() {
                $("#sec_mehed").fadeToggle();
            });

            $("#nupp_nained").click(function() {
                $("#sec_nained").fadeToggle();
            });
        });
    </script>

</head>
<body>
<header>
    <h1>Õpilased TARpv22</h1>
</header>
<?php
global $yhendus;
//выводим данные из бд
$paring = $yhendus->prepare("SELECT id, nimi, veebileht,sugu FROM opilane");
//создаем переменные для этих данных
$paring->bind_result($id, $nimi, $veebileht,$sugu);

$paring->execute();

//создаем два листа для мужчин и женщин

$list_mehed=array();
$list_nained=array();

$id=1;//айди для каждого

//перебираем каждый обект  из таблицы
while ($paring->fetch()) {
    //создаем уникальный код для каждого ученика с его именем и сайтом, чтобы в будующем можно было удобно вывести
    //если пол 1 то определяем его контейнер в класс мужчины, если 0 то женщины
    if ($sugu===1){$kood_mehed="<div class='div_mehed'>$id. <a href='https://$veebileht'>$nimi</a></div>";
    $id++; //увелиичть айди на 1
        //добавляем в список кодов
    $list_mehed[]=$kood_mehed;}


    else if ($sugu===0){$kood_nained="<div class='div_nained'>$id. <a href='https://$veebileht'>$nimi</a></div>";
     $id++;
        $list_nained[]=$kood_nained;}
}
$yhendus->close();
?>

<nav>
    <!--кнопки для вывода или прятанья списков-->
    <input type="button" id="nupp_mehed" value="Näita/Peita mehed" onClick="Slide_mehed">
    <input type="button" id="nupp_nained" value="Näita/Peita nained" onClick="Slide_nained">
</nav>
<div class="inimesed">
    <section id="sec_mehed">
    <h2>Mehed</h2>
        <?php
        //перебираем каждый код в массиве
        foreach ($list_mehed as $item){
            echo $item;
        }
        ?>
    </section>

    <section id="sec_nained">
        <h2>Nained</h2>
        <?php
        foreach ($list_nained as $item){
            echo $item ;
        }
        ?>
    </section>
</div>
</body>
</html>
