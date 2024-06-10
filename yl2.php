<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ulesanne 2</title>
</head>
<body>
    <?php include('config.php'); ?>

    <p>Väljasta kogu ‘tooted’ sisu ridade kaupa (10 rida)</p>
    <?php
    $paring = 'SELECT * FROM tooted limit 10';
    $valjund = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund)) {
        echo $row['artist'].' - '.$row['album'].' - '.$row['aasta'].' - '.$row['hind'].'<br>';
    }
    echo '<br>';
    ?>

    <p>Väljasta tabelist ainult artist ja album read, kusjuures sorteeri kasvavalt artisti järgi (10 rida)</p>
    <?php
    $paring = 'SELECT artist, album FROM tooted ORDER BY artist LIMIT 10';
    $valjund = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund)){
        echo $row['artist'].' - '.$row['album'].'<br>';
    }
    echo '<br>';
    ?>

    <p>Väljasta tabelist ainult artist ja album read, mille aasta on 2010 ja uuemad</p>
    <?php
    $paring = 'SELECT artist, album FROM tooted WHERE aasta >= 2010';
    $valjund3 = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund3)){
        echo $row['artist'].' - '.$row['album'].'<br>';
    }
    ?>

    <br>
    <p>Väljasta kui palju erinevaid albumeid on andmebaasis, mis on nende keskmine hind ja koguväärtus (summa)</p>
    <?php
    $paring = 'SELECT COUNT(DISTINCT album) AS "albumeid kokku", AVG(hind) AS "keskmine hind", SUM(hind) AS "koguväärtus" FROM tooted';
    $valjund = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund)){
        echo 'albumeid kokku: '.$row['albumeid kokku'].' - kesmine hind: '.$row['keskmine hind'].' -  koguvaartus: '.$row['koguväärtus'].'<br>';
    }
    ?>

    <br>
    <p>Väljasta kõige vanema albumi nimed</p>
    <?php
    $paring = 'SELECT album FROM tooted ORDER BY aasta LIMIT 1';
    $valjund = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund)){
        echo $row['album'];
    }
    ?>

    <br>
    <p>Väljasta tooted, mille hind on kogu keskmisest suurem</p>
    <?php
    $paring = 'select * from tooted where hind > (select avg(hind) from tooted)';
    $valjund = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund)){
        echo $row['album'].'<br>';
    }
    ?>

    <br>
    <p>Loo otsingukast, mis lubab valida, kas otsing toimub artistide või albumite veerust.</p>
    <form action="yl2.php" method="get">
        <input type="text" name="otsi">
        <select name="otsi_mida">
            <option value="artist">Artist</option>
            <option value="album">Album</option>
        </select>
        <input type="submit" value="otsi">
    </form>

    <?php
    $paring = 'SELECT * FROM tooted WHERE '.$_GET['otsi_mida'].' LIKE "%'.$_GET['otsi'].'%"';
    $valjund = mysqli_query($uhendus, $paring);
    while ($row = mysqli_fetch_array($valjund)){
        echo $row['artist'].' - '.$row['album'].' - '.$row['aasta'].' - '.$row['hind'].'<br>';
    }
    ?>
</body>
</html>