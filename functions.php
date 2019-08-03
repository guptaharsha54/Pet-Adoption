<?php

//For Encrypted Password
function generateHash($plainText, $salt = NULL) {
    if ($salt === NULL) {
        $salt = substr(md5(uniqid(rand(), TRUE)), 0, 25);
    }
    else {
        $salt = substr($salt, 0, 25);
    }

    return $salt . sha1($salt . $plainText);
}


//For creating new user
function createNewUser($username, $firstname, $lastname,$phno, $email, $password)
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


    $newpassword = generateHash($password);

    $stmt = $mysqli->prepare(
        "INSERT INTO " . $db_table_prefix . "userdetails (
		UserID,
		Username,
		FirstName,
		LastName,
		PhoneNumber,
		Email,
		Password
		)
		VALUES (
		'" . $rand_string . "',
		?,
		?,
		?,
		?,
		?,
		?
		)"
    );
    $stmt->bind_param("ssssss", $username, $firstname, $lastname,$phno, $email, $newpassword);
    //print_r($stmt);
    $result = $stmt->execute();
    //print_r($result);
    $stmt->close();
    return $result;

}
//Display pets
function fetchAllPets()
{

    global $mysqli, $db_table_prefix;
    $stmt = $mysqli->prepare(
        "SELECT
		PetID,
		PName,
		PetAge,
		PColor,
		PBreed,
		PetImage
		FROM pets"
    );
    $stmt->execute();
    $stmt->bind_result(
        $pid,$pname,$petage,$pcolor,$pbreed,$petimage);

    while ($stmt->fetch()) {
        $row[] = array(
            'pid'                   => $pid,
            'pname'                 => $pname,
            'petage'                => $petage,
            'pcolor'                => $pcolor,
            'pbreed'                => $pbreed,
            'pimage'                => $petimage
        );
    }
    $stmt->close();
    return ($row);
}

//Destroys a session as part of logout
function destroySession($name)
{
    if(isset($_SESSION[$name]))
    {
        $_SESSION[$name] = NULL;
        unset($_SESSION[$name]);
    }
}