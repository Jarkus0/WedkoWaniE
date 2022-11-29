<?php 
    $BASED="wedkowanie";
    $USER="root";
    $HOST="localhost";
    $PASSWORD="";

    function Skrypt2() {
        $BASED="wedkowanie";
        $USER="root";
        $HOST="localhost";
        $PASSWORD="";
        $conn = new mysqli($HOST, $USER, $PASSWORD, $BASED);
        $sql = "SELECT * FROM Lowisko";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "" . $row["id"]. "". $row["Ryby_id"]. "" .$row["akwen"]."".$row["akwen"]."".$row["wojewodstwo"]."".$row["rodzaj"];
            }
        $conn->close();
        }
    }
?>