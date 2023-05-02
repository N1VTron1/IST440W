<!DOCTYPE html>
<html>
    <head>
        <title>Connecting to database...</title>
    </head>
    <body>
        <?php
        $con = mysqli_connect("127.0.0.1", "root", "", "gph_mews_db");
        echo "Connecting to database...";

        if (mysqli_connect_errno()) {
            echo "Could not connect to database: " . mysqli_connect_error();
        } else {
            echo "Database connected!";
        }
        ?>
    </body>
</html>

