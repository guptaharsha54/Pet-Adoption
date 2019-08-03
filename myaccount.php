<?php
require_once("config.php");
require_once("Nav-bar.php");


error_reporting( E_ALL ); // avoid notice


if(isset($_POST['btnsave']))
{
    $pname = $_POST['pname'];
    $petage = $_POST['petage'];
    $pcolor = $_POST['pcolor'];
    $pbreed = $_POST['pbreed'];

    if(isset($_FILES['pimage'])) {
        $imgFile = $_FILES['pimage']['name'];
        $tmp_dir = $_FILES['pimage']['tmp_name'];
        $imgSize = $_FILES['pimage']['size'];
    }

    if(empty($pname)){
        $error_message = "Please enter pet name.";
    }
    else if(empty($petage)){
        $error_message = "Please enter pet age.";
    }
    else if(empty($pcolor)){
        $error_message = "Please enter pet color.";
    }
    else if(empty($pbreed)){
        $error_message = "Please enter pet breed.";
    }
    else if(empty($imgFile)){
        $error_message = "Please select image file.";
    }
    else
    {
        $upload_dir = 'uploads/'; // upload directory

        $imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension

               // valid image extensions
        $valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions

              // rename uploading image
        $petimage = rand(1000,1000000).".".$imgExt;

             // allow valid image file formats
        if(in_array($imgExt, $valid_extensions)){
            // Check file size '5MB'
            if($imgSize < 5000000)				{
                move_uploaded_file($tmp_dir,$upload_dir.$petimage);
            }
            else{
                $error_message = "Sorry, your file is too large.";
            }
        }
        else{
            $error_message = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        }
    }
// if no error occured, continue ....
    if(!isset($error_message))
    {

        global $mysqli, $db_table_prefix;

        //Generate A random userid
        $character_array = array_merge(range('a', 'z'), range(0, 9));
        $rand_string = "";
        for ($i = 0; $i < 6; $i++) {
            $rand_string .= $character_array[rand(
                0, (count($character_array) - 1)
            )];
        }


        $stmt = $mysqli->prepare(
            "INSERT INTO " . $db_table_prefix . "pets(
        PetID,
		PName,
		PetAge,
		PColor,
		PBreed,
		PetImage
		)
		VALUES (
		'" . $rand_string . "',
		?,
		?,
		?,
		?,
		?
		)"
        );
        $stmt->bind_param("sssss",$pname,$petage,$pcolor,$pbreed,$petimage);

        if($stmt->execute())
        {
            $successMSG = "Yeah!!! Pet image Succesfully Uploaded";
            header("refresh:5;index.php"); // redirects image view page after 2 seconds.
        }
        else
        {
            $error_message = "error while uploading....";
        }
    }
}
?>
<html>
<head>
    <style>
        fieldset{
            color: #070303;
            font-family: "Arial";
            width: 350px;
            margin:50px auto
        }
        .rectangle{
            background-color:gainsboro;
            border: 5px black;
            color: black;
            padding: 5px 28px;
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>
<html>
<body>

<div class="container">
    <div class="page-header" align="center">
        <h1>ADD NEW PET</h1>
    </div>
    <?php
    if(isset($error_message)){
        ?>
        <div class="alert alert-danger">
            <strong><?php echo $error_message; ?></strong>
        </div>
        <?php
    }
    else if(isset($successMSG)){
        ?>
        <div class="alert alert-success">
            <strong><?php echo $successMSG; ?></strong>
        </div>
        <?php
    }
    ?>

    <form method="post" enctype="multipart/form-data" class="form-horizontal">
        <center>
            <fieldset>
                <table class="table table-bordered table-responsive micro">
                    <tr>
                        <td><label class="control-label">Pet Name</label></td>
                        <td><input class="form-control" type="text" name="pname"  value="" /></td>
                    </tr>
                    <tr>
                        <td><label class="control-label">Age</label></td>
                        <td><input class="form-control" type="text" name="petage" value="" /></td>
                    </tr>
                    <tr>
                        <td><label class="control-label">Color</label></td>
                        <td><input class="form-control" type="text" name="pcolor"  value="" /></td>
                    </tr>
                    <tr>
                        <td><label class="control-label">Breed</label></td>
                        <td><input class="form-control" type="text" name="pbreed"  value="" /></td>
                    </tr>

                    <tr>
                        <td><label class="control-label">Pet Img.</label></td>
                        <td><input class="input-group" type="file" name="pimage" accept="images/*" /></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="btnsave" class="rectangle">Upload</button></td>
                    </tr>
                </table>
            </fieldset>
        </center>
    </form>
</div>

</body>
</html>