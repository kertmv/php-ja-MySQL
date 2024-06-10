<?php include ("config.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ulesanne 3 ja 4</title>
</head>

<body>
    <div class="container">   
        <p>Lisa asjad: </p>
        <form action="#" method="get">
            <label for="artist">Artist: </label>
            <input type="text" name="artist" id="artist"><br>

            <label for="album">Album: </label>
            <input type="text" name="album" id="album"><br>

            <label for="aasta">Aasta: </label>
            <input type="number" name="aasta" id="aasta"><br>

            <label for="hind">Hind: </label>
            <input type="number" name="hind" id="hind"><br>
            <button type="button">Lisa andmed</button>
        </form>

        <?php        
        if(!empty($_GET['artist']) && !empty($_GET['album']) && !empty($_GET['aasta']) && !empty($_GET['hind'])){
            $artist = $_GET["artist"];
            $album = $_GET["album"];
            $aasta = $_GET["aasta"];
            $hind = $_GET["hind"];

            $artist = mysqli_real_escape_string($uhendus, $artist);
            $album = mysqli_real_escape_string($uhendus, $album);
            $aasta = mysqli_real_escape_string($uhendus, $aasta);
            $hind = mysqli_real_escape_string($uhendus, $hind);

            $lisaasjad = "INSERT INTO tooted (artist, album, aasta, hind) VALUES ('$artist', '$album', '$aasta', '$hind')";
            if ($uhendus -> query($lisaasjad) === TRUE) {
                echo "Lisatud andmed andmebaasi";
            }
        }

        if(isset($_GET['action']) && $_GET['action'] == 'kustuta' && isset($_GET['id'])) {
            $id = $_GET['id'];
            $kustuta = "DELETE FROM tooted WHERE id=$id";
            if ($uhendus -> query($kustuta) === TRUE) {
                echo "Andmed kustutatud";
            }
        }

        if(isset($_GET['action']) && $_GET['action'] == 'muuda' && isset($_GET['id'])) {
            $id = $_GET['id'];
            $muuda = "SELECT * FROM tooted WHERE id = $id";
            $muudavastus = $uhendus -> query($muuda);

            if ($muudavastus -> num_rows > 0) {
                $muudarida = $muudavastus -> fetch_assoc();
                $muudaartist = $muuda_rida["artist"];
                $muudaalbum = $muuda_rida["album"];
                $muudaaasta = $muuda_rida["aasta"];
                $muudahind = $muuda_rida["hind"];
                ?>
                <p>muuda albumit</p>
                <form action='#' method='get'>
                    <input type='hidden' name='action' value='salvestamuudatus'>
                    <input type='hidden' name='id' value='$id'>

                    <label for='artist'>artist:</label>
                    <input type='text' name='artist' id='artist' value='<?php echo $muudaartist; ?>'>
                    <br>

                    <label for='album'>album:</label>
                    <input type='text' name='album' id='album' value='<?php echo $muudaalbum; ?>'>
                    <br>

                    <label for='aasta'>aasta:</label>
                    <input type='text' name='aasta' id='aasta' value='<?php echo $muudaaasta; ?>'>
                    <br>

                    <label for='hind'>hind:</label>
                    <input type='text' name='hind' id='hind' value='<?php echo $muudahind; ?>'>
                    <br>
                    <button type='button' value='muuda'>muuda</button> 
                </form>
                <?php
            } else {
                echo "ei toota";
            }
        }
                
        $sql = "SELECT * FROM tooted";
        $result = $uhendus -> query($sql);
        
        if ($result -> num_rows > 0) {
            echo "<p>koik asjad</p>";
            while($row = $result -> fetch_assoc()) {
                echo "<p>";
                echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . " - Aasta: " . $row["aasta"] . " - Hind: " . $row["hind"] . "€";
                echo " <a href='?action=muuda&id=" . $row["id"] . "'>muuda</a>";
                echo " <a href='?action=kustuta&id=" . $row["id"] . "' onclick=\"return confirm('Kkindel?');\">kustutta</a>";
                echo "</p>";
            }
        }
        ?>

        <p><br>ylesane 4</p>
        
        <?php
        $andmebaasiduhendus = "SELECT kliendid.eesnimi, kliendid.perenimi, arved.kogus, tooted.album FROM kliendid INNER JOIN arved ON arved.kliendid_id = kliendid.id INNER JOIN tooted ON arved.tooted_id = tooted.id;";
        $result = $uhendus -> query($andmebaasiduhendus);

        if ($result -> num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "inimeene  " . $row["eesnimi"] . " " . $row["perenimi"] . " <br> album:  " . $row["album"] . " <br> kogus: " . $row["kogus"] . "<br>";
            }
        }
        ?>
        <?php $uhendus -> close();?>   
    </div>
</body>
</html>
