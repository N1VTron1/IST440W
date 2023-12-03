<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>Home</title>
        <style>
            body {
                text-align: center;
                font-family: 'Franklin Gothic';
                background-color: #00ffcc;
            }

            div {
                background-color: white;
                padding-top: 5%;
                padding-bottom: 5%;
                margin-top: 5%;
            }

            header {
                color: white;
            }

            header > img {
                width: 125px;
            }

            header > button > img {
                width: 125px;
            }

            .search-bar-btn {
                border: none;
                background: none;
            }

            img.search-bar-btn {
                width: 30px;
            }

            table {
                background-color: #ccfff5;
                margin-left: auto;
                margin-right: auto;
            }

            tr, th, td {
                border-bottom: solid;
                padding: 20px;
            }

            .cancel-btn {
                border: none;
                background-color: lightcoral;
                color: white;
                padding: 10px;
                margin-top: 30px;
                margin-bottom: 30px;
                font-weight: bold;
                font-size: 20px;
                border-radius: 25px;
            }

            .cancel-btn:hover {
                background-color: #ff9999;
            }

            .left-nav-btn {
                border: none;
                background: none;
                float: left;
            }

            .right-nav-btn {
                border: none;
                background: none;
                float: right;
            }

            .normal-vitals {
                color: #33cc33;
            }

            .warning-vitals {
                color: #ffff1a;
            }

            .critical-vitals {
                color: red;
            }

            .green-button {
                background-color: #33cc33;
                border: none;
                padding: 20px;
                color: white;
                margin-top: 30px;
                margin-bottom: 30px;
                font-weight: bold;
                font-size: 20px;
                border-radius: 25px;
            }

            .green-button:hover {
                background-color: lawngreen;
            }

            .textbox {
                border: none;
                border-radius: 15px;
                padding: 10px;
                margin-left: 10px;
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>HOME</h1>
            <button class="left-nav-btn" onclick="window.location.href='Home.html';">
                <img src="https://cdn-icons-png.flaticon.com/512/3541/3541850.png" />
            </button>
            <button class="right-nav-btn" onclick="window.location.href='C:\Users\diamo\Source\Repos\IST440W\Settings.html';">
                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.cbe.ie%2Fwp-content%2Fuploads%2F2019%2F02%2Fwhite-gear.png&f=1&nofb=1&ipt=a5591e89248f6d029a6f925c531b6aadd80350655df1ef59d6c03bc7f1d63c61&ipo=images" />
            </button>
            <nav>
                <a href="C:\Users\diamo\Source\Repos\IST440W\Login Page.html">Log out</a>
                <br />
                <button class="search-bar-btn">
                    <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fopenclipart.org%2Fimage%2F2400px%2Fsvg_to_png%2F213239%2FSearch-icon.png&f=1&nofb=1&ipt=37eaf3c38029a1c76e2c798edcc9cbc3f28ad5bfba7c6e039321008c4dd39aab&ipo=images" class="search-bar-btn" />
                </button>
                <input class="textbox" type="text" value="Search here..." />
                <button class="search-bar-btn">
                    <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.onlinewebfonts.com%2Fsvg%2Fimg_309063.png&f=1&nofb=1&ipt=84339caeca97b19ed3cc70ae0a0179038b0f56c216d429b43c3ddeab970f0735&ipo=images" class="search-bar-btn" />
                </button>
            </nav>
        </header>
        <div>
            <!--Code from: https://www.w3schools.com/php/php_mysql_select.asp -->
            <?php
            $servername = "127.0.0.1";
            $username = "root";
            $password = "";
            $dbname = "gph_mews_db";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM patient";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table><tr><th>MEWS Score</th><th>Patient Name</th><th>Room Number</th><th>Unit Number</th></tr>";
                // output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr><td>" . $row["mewsscore"] . "</td><td>" . $row["PATNAME"] . "</td><td>" . $row["roomnumber"] . "</td><td>" . $row["unitnumber"] . "</td></tr>";
                }
                echo "</table>";
            } else {
                echo "0 results";
            }
            $conn->close();
            ?>
        </div>
        <footer>&copy; IST 440W Team 1 2023</footer>
    </body>
</html>


