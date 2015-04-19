<?php

/**
 * Template Name: missinganimal
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
/* Proper way to enqueue scripts and styles 
function mytheme_custom_scripts(){
    
    // Register and Enqueue a Stylesheet
    // get_template_directory_uri will look up parent theme location
    wp_register_style( 'intlTelInput.css', get_template_directory_uri() . '/intl-tel-input-master/build/css/intlTelInput.css');
    wp_enqueue_style( 'intlTelInput.css' );
    
    // Register and Enqueue a Script
    // get_stylesheet_directory_uri will look up child theme location
    wp_register_script( 'intlTelInput.js', get_stylesheet_directory_uri() . '/intl-tel-input-master/build/js/intlTelInput.js');
    wp_enqueue_script( 'intlTelInput.js' );
      wp_register_script( 'combobox.js', get_stylesheet_directory_uri() . '/js/custom-script.js');
    wp_enqueue_script( 'combobox.js' );
    
}

add_action('wp_enqueue_scripts', 'mytheme_custom_scripts');*/

wp_enqueue_script('jquery-ui-datepicker');
wp_enqueue_style('jquery-style', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/themes/smoothness/jquery-ui.css');

/*session_start();
 if('POST' !== $_SERVER['REQUEST_METHOD'])
 {$errName="";
$errNameSize="";
$errPhone="";
$errZip="";
$errAddress="";
$errEmail="";
$errCity="";
$errPetType="";
$errPetBreed="";
$errPetHeight="";
 }
$_SESSION['flag']=false*/

 ?>
<html>

    <head>
     
    </head>
    <body>
    <form method="POST" style="margin-left: 500px" >
    <table border="0px">
        <tr><td colspan="3"><h3>Pet information:</h3></td></tr>
        <tr><td> Pet Name:</td><td colspan="2">  <input type ="text" name="pet_name" value="<?php if($flag==true) {echo '$pet_name';}?>"></td><td><span><?php if($errName!==""){echo $errName;}?></span></td></tr>
    <tr><td> Pet Height:</td><td colspan="2"><input type="text" name="pet_height" placeholder="in cms" value="<?php if($flag==true) {echo $pet_height;}?>"></td></tr>
    <tr><td>Pet Breed: </td><td colspan="2"><input type="text" name="pet_breed"></td></tr>
    <tr><td> Pet color:</td><td colspan="2"> <input type="text" name="pet_color"></td></tr>
    <tr><td>Pet Type:</td><td  colspan="2"><select name="pet_type"><option value="">select</option>
            <option value="dog">dog</option>
            <option value="cat">cat</option>
            <option value="bird">bird</option>
            <option value="fish">fish</option>
            <option value="cow">cow</option>
            <option value="rabbit">rabbit</option>
            <option value="buffalo">buffalo</option>
            <option value="tortoise">tortoise</option></select></td></tr>
    <tr><td>Pet Missing date:</td><td colspan="2"><input type="text" id="Date" name="pet_date"></td></tr>
   <script type="text/javascript">

jQuery(document).ready(function() {
    jQuery('#Date').datepicker({
        dateFormat  :  'dd-mm-yy'
    });
});

</script>

    <tr><td colspan="3"><h3>Owner Information:</h3></td></tr>
    <tr><td>Name: </td> <td colspan="2"><input type ="text" name="o_name" required="required" placeholder="First letter capital"></td></tr>
    <tr><td>contact no:</td><td colspan="2"><input type="text" name="o_zip" size="2" length="4">&nbsp;<input type="text" id="mobile-number" placeholder="" name="o_number" size="13" length="11"></td></tr>
    <tr><td> Email id:</td><td colspan="2"> <input type="email" name="o_email"></td></tr>
    <tr><td>Address:</td><td colspan="2"> <input type="text" name="o_add"></td></tr>
    <tr><td>City:</td><td colspan="2"><input type="text" name="o_city"></td></tr>
    <tr ><td colspan="3"><input type="submit" name="submit"></td></tr>
    </table>
 <!-- photo of pet:<button name="upload" value="upload" ></button>-->
    
    
</form>
    </body>
   
</html>

<?php

if(isset($_REQUEST['submit']))
{
    
    extract($_POST);
    //form validation
    //validate  owner name
    // Full Name must contain lettersand spaces only and must start with upper case letter.
    if(preg_match("/^[A-Z][a-zA-Z ]+$/", $_POST["o_name"]) === 0   ||  preg_match("/^[A-Z][a-zA-Z ]$/",$_POST["pet_name"])===0) {
        $errName = '<p class="errText">Name must be from letters, spaces and must not start with a space</p>';
    }
    
    if(sizeof($_POST["o_name"], 0)>36 || sizeof($_POST["o_name"], 0)<5)
    {
        $errNameSize= '<p class="errText">Name must not be greater than 36 or less than 5 characters </p>';
    }
    //contact number should be of ten digit and in for Phone mask 1-800-999-9999      
    if (preg_match("/^(d{1}-)+d{3}-d{3}-d{4}$/", $_POST["phone"]) === 0) {
        $errPhone = '<p class="errText">Phone must comply with this mask:(1-)333-333-4444</p>';
    }
    // Zip must be 4 digits
    if (preg_match("/^d{4}$/", $_POST["zip"]) === 0) {
        $errZip = '<p class="errText">Zip must be 4 digits</p>';
    }
    //address can contain alphanumeric characters as well as symbols like ' " : ;  . /
    if(preg_match("/^[a-zA-Z0-9 \/\-.,:\"\']+$/", $_POST["o_add"]) === 0){
         $errAddress = '<p class="errText">Address must be only letters, numbers or one of the following _ - . , :\"\'</p>';
    }
    //validation for email
    // Email mask
    if (preg_match("/^[a-zA-Z0-9]w+(.w+)\*@w+(.[0-9a-zA-Z]+)\*.[a-zA-Z]{2,4}$/", $_POST["o|_email"]) === 0) {
        $errEmail = '<p class="errText">Email must comply with this mask: chars(.chars)@chars(.chars).chars(2-4)</p>';
    }
    //validation for city
    if(preg_match("/^[A-Z][a-z]+( [A-Z][a-z])$/",$_POST["o_city"])===0){
             $errCity = '<p class="errText">First word and second(if any) of city should start with capital <br>and must contain only characters</p>';
    }
//validation of  pet type
    if($_POST['pet_type']=="")
    {
        $errPetType='<p class="errText">please select a pet type</p>';
    }
    //validation of pet breed
    if(preg_match("/^[a-zA-Z ]$/", $_POST["pet_breed"])===0)
    {
        $errPetBreed='<p class="errText">Breed of pet should contain only alphabets and space <p>';
    }
    
    if(preg_match("/^[0-9.]$/", $_POST['pet_height'])===0 && $_POST['pet_height']<=185)
    {
        $errPetHeight='<p class="errText">should be numeric and less than 186 cms <p>';
    }

    
    //validate date
    if(preg_match("/^d{4}-d{2}-d{2}$/", $_POST['pet_date'])===0 && $_POST['pet_date']==="0000-00-00")
    {
        $errPetDate='<p class="errText">please select a date in the format yyyy-mm-dd<p>';
    }
    if(empty($errName) &&
                                            empty($errNameSize) &&
                                            empty($errPhone) &&
                                            empty($errZip) &&
                                            empty( $errAddress) &&
                                             empty($errEmail) &&
                                             empty($errCity) &&
                                             empty($errPetType) &&
                                             empty($errPetBreed) &&
                                             empty($errPetHeight) )
    {
                $name=$_POST['o_name'];
                //link columns with form data
                $owner_data=array('owner_name'=>$o_name,
                                    'owner_contact_no'=>$o_number,
                                    'owner_email_id'=>$o_email,
                                    'owner_address'=>$o_add,
                                    'owner_city'=>$o_city);

                //insert information of owner in wp_ju_petowner_info
                global $wpdb;
               $x=$wpdb->insert('wp_ju_petowner_info',$owner_data);
               echo $x;
               //get owner_id from wp_ju_petowner_info table
                $ownerid=$wpdb->get_results("select owner_id FROM wp_ju_petowner_info WHERE owner_name='$name'");
             $o_id;
                foreach($ownerid as $a=>$b)
                {
                   $o_id=$b->owner_id;
                }
                //link columns of table with form data
              $pet_data=array('owner_id'=>$o_id,
                                    'pet_name'=>$pet_name,
                                    'pet_height'=>$pet_height,
                                    'pet_height_unit'=>$unit,
                                    'pet_breed'=>$pet_breed,
                                    'pet_color'=>$pet_color,
                                    'pet_type'=>$pet_type,
                                    'pet_missing_date'=>$pet_date);
                $color=$_POST['pet_color'];
                echo $color;
              //insert pet info in wp_ju_missingpets table
              $wpdb->insert('wp_ju_missingpets',$pet_data);
    }
    else
    {
        $flag=true;
        echo '<span style="color:red;">there is any wrong entry please check the form</span>';
       /* if($_SESSION['owner_info'])
        {
            $user=$_SESSION['owner_info'];
            $pet_name=$user->pet_name;
            echo $pet_name;
            $pet_breed=$user->pet_breed;
            $pet_type=$user->pet_type;
            $pet_color=$user->pet_color;
            $pet_height=$user->pet_height;
            $pet_photo=$user->pet_photo;
        }*/
    }

}

?>
