<!DOCTYPE html>
<html>
    <head>
        <title>Connect to database</title>
    </head>
    <body>
        <!--Code from: https://www.w3schools.com/php/php_mysql_select.asp -->
        <?php
        $con = mysqli_connect("127.0.0.1", "root", "", "gph_mews_db");
        echo "Connecting to database...<br>";

        if (mysqli_connect_errno()) {
            echo "Could not connect to database: " . mysqli_connect_error();
        }

        echo "Database connected!<br>";

        // SQL query to retrieve data
        $sql = "SELECT * FROM patient";

        // Executing the query and storing the result
        $result = mysqli_query($conn, $sql);

        // Checking if the query was successful
        if (mysqli_num_rows($result) > 0) {
            // Outputting the data
            while ($row = mysqli_fetch_assoc($result)) {
                echo "ID: " . $row["PATIDNO"] . "<br> - Name: " . $row["PATNAME"] . "<br> - Date of birth: " . $row["DOB"] . "<br>";
            }
        } else {
            echo "0 results";
        }

        // Close the connection
        mysqli_close($conn);
        echo "Connection closed";
        ?>
    </body>
</html>

