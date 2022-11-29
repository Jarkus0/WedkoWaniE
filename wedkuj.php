<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wędkowanie</title>
    <link rel="stylesheet" href="styl_1.css" type="text/css">
</head>
<body>

    <div className="Baner">
        <h1>Portal dla wędkarzy</h1>
    </div>

    <div className="Kontent">
        <div className="Dwa_Bloki_Lewe">

            <div className="Pierwszy_Lewy">

                <h3>Ryby zamieszkujące rzeki</h3>
                <?php
                require_once  'Skrypt1.php';
                Skrypt1();
                ?>

            </div>

            <div className="Drugi_Lewy">

                <h3>Ryby drapieżne naszych wód</h3>

                <div className="Tabele">
                <?php
                require_once  'Skrypt2.php';
                Skrypt2();
                ?>
                </div>

            </div>

        </div>

        <div className="Prawy_Blok">

            <div className="Zdjecie">
                <img src="ryba.png" alt="Sum" width="400">
            </div>

            <a href="/kwerendy.txt">Pobierz kwerendy</a>

        </div>
        
    </div>

    <div className="Stopka">
        <p>Stronę wykonał: 03320606017</p>
    </div>

</body>
</html>