<?php

require_once ("config.php");
require_once ("Nav-bar.php");

?>

<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
    <title>
        FIRST CRUD
    </title>
    <!-- Style -- Can also be included as a file usually style.css -->
    <style type="text/css">
        table.table-style-three {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #fdf8ff;
            border-collapse: collapse;
        }
        table.table-style-three th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #fdf8ff;
            background-color: #060404;
            color: #ffffff;
        }


        table.table-style-three tr:hover td {
            cursor: pointer;
        }


        table.table-style-three td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #fdf8ff;
            background-color: #ffffff;
        }
    </style>

</head>
<body>

<?php require_once("config.php");

$allrecords = fetchAllPets();
?>
<center>
<!-- Table goes in the document BODY -->
<table class="table-style-three">
    <thead>
    <!-- display user details header  -->

        <th>Pet Image</th>
        <th>Pet Name</th>
        <th>Age</th>
        <th>Color</th>
        <th>Breed</th>

    </thead>
    <tbody>
    <?php
    foreach($allrecords as $displayRecords) { ?>
        <tr>
            <td><img src="uploads/<?php echo $displayRecords['pimage']; ?>" class="img-rounded" width="250px" height="250px" /></td>
            <td><?php print $displayRecords['pname']; ?></td>
            <td><?php print $displayRecords['petage']; ?></td>
            <td><?php print $displayRecords['pcolor']; ?></td>
            <td><?php print $displayRecords['pbreed']; ?></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
</center>
</body>
</html>

























<!--html>
<head>
    <style>
        td{
            text-align: center;
            font-size: 18px;
            font-style: oblique;

        }
    </style>
</head>

<center>
    <table cellpadding="10" >
        <tr>
            <td>
                <img src="images/milo.jpg" width="250" height="250">
            </td>
            <td>
                <img src="images/max.jpg" width="250" height="250">
            </td>
            <td>
                <img src="images/billy.jpg" width="250" height="250">
            </td>
        </tr>
        <tr>
            <td>MILO</td>
            <td>MAX</td>
            <td>BILLY</td>
        </tr>
        <tr>
            <td>
                <img src="images/casper.jpg" width="250" height="250">
            </td>
            <td>
                <img src="lucy.jpg"width="250" height="250">
            </td>
            <td>
                <img src="images/oscar.jpg" width="250" height="250">
            </td>
        </tr>
        <tr>
            <td>CASPER</td>
            <td>LUCY</td>
            <td>OSCAR</td>
        </tr>

    </table>
</center>

</html-->