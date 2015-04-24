<?php

/**
 * Template Name: missinganimal
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
//get_header();
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

session_start();
 if('POST' !== $_SERVER['REQUEST_METHOD'])
 {$errPetName="";
 $errOName="";
$errPNameSize="";
$errONameSize="";
$errPhone="";
$errZip="";
$errAddress="";
$errEmail="";
$errCity="";
$errPetType="";
$errPetBreed="";
$errPetHeight="";
$errPetColor="";
$_SESSION['flag']=false;
 }


 ?>
<?php

if(isset($_REQUEST['submit']))
{
    
    extract($_POST);
    
    //form validation
    //validate  owner name
    // Full Name must contain lettersand spaces only and must start with upper case letter.
    if(preg_match("/^[A-Z][a-zA-Z ]+$/", $_POST["o_name"])===0) {
        $errOName = '<p class="errText">Name must be from letters, spaces and must not start with a space</p>';
    }
    if(strlen($_POST["o_name"]) >36 || strlen($_POST["o_name"]) <5)
    {
        $errONameSize= '<p class="errText">Name must not be greater than 36 or less than 5 characters </p>';
    }
    //validate pet name
     if(preg_match("/^[A-Z][a-zA-Z ]+$/", $_POST["pet_name"])===0) {
        $errPetName = '<p class="errText">Name must be from letters, spaces and must not start with a space</p>';
    }
    if(strlen($_POST["pet_name"]) >36 || strlen($_POST["pet_name"]) <5)
    {
        $errPNameSize= '<p class="errText">Name must not be greater than 36 or less than 5 characters </p>';
    }
    
    //contact number should be of ten digit and in for Phone mask 1-800-999-9999      
    if (preg_match ("/^([1]-)?[0-9]{3}-[0-9]{3}-[0-9]{4}$/i" ,$_POST["o_number"]) === 0) {
        $errPhone = '<p class="errText">Phone must comply with this mask:10 or eleven digits</p>';
    }
    // Zip must be 4 digits
    if (preg_match("/^[0-9]{3,4}$/", $_POST["o_zip"]) === 0) {
        $errZip = '<p class="errText">Zip must be 4 digits</p>';
    }
    //address can contain alphanumeric characters as well as symbols like ' " : ;  . /
    if(preg_match("/^[a-zA-Z0-9 \/\-.,:\"\']+$/", $_POST["o_add"]) === 0){
         $errAddress = '<p class="errText">Address must be only letters, numbers or one of the following _ - . , :\"\'</p>';
    }
    //validation for email
    // Email mask
  if (preg_match("/^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*\.[a-z]{2,3}$/i",$_POST["o_email"]) === 0) {
    $errEmail = '<p class="errText">Email must comply with this mask: chars(.chars)@chars(.chars).chars(2-4)</p>';
    }
    //validation for city
    if(preg_match("/^[A-Z][a-z]+( [A-Z][a-z]+)*$/",$_POST["o_city"])===0){
             $errCity = '<p class="errText">First word and second(if any) of city should start with capital <br>and must contain only characters</p>';
    }
//validation of  pet type
    if($_POST['pet_type']=="")
    {
        $errPetType='<p class="errText">please select a pet type</p>';
    }
    //validation of pet breed
    if(preg_match("/^[a-zA-Z ]+$/", $_POST["pet_breed"])===0)
    {
        $errPetBreed='<p class="errText">Breed of pet should contain only alphabets and space <p>';
    }
    //validate pet color
      if(preg_match("/^[a-zA-Z]+$/", $_POST["pet_color"])===0)
    {
        $errPetColor='<p class="errText">Color of pet should contain only alphabets <p>';
    }
    if(preg_match("/^[0-9]{2,3}$/", $_POST['pet_height'])===0)
    {
        $errPetHeight='<p class="errText">should be numeric <p>';
    }

    
    //validate date
    if(preg_match("/^d{4}-d{2}-d{2}$/", $_POST['pet_date'])===0 && $_POST['pet_date']==="")
    {
        $errPetDate='<p class="errText">please select a date in the format yyyy-mm-dd<p>';
    }
    
 
   if(empty($errPetName)&&empty($errPNameSize) &&
                                            empty($errPhone) &&
                                            empty($errZip) &&
                                           empty($errAddress)  &&
                                           empty($errEmail)  &&
                                            empty($errCity)  &&
                                            empty($errPetType)  &&
                                            empty($errPetBreed) &&
                                           empty($errPetHeight) &&
                                            empty($errOName)&&
                                            empty($errOName) &&
                                             empty($errPetColor))
    /*if($errPetName===""&&
                                            $errPNameSize===""&&
                                            $errPhone==="" &&
                                            $errZip===""&&
                                           $errAddress==="" &&
                                           $errEmail==="" &&
                                           $errCity===""  &&
                                           $errPetType===""&&
                                           $errPetBreed==="" &&
                                           $errPetHeight ==="" &&
                                           $errOName==="" &&
                                          $errOName===""  &&
                                          $errPetColor==="" )*/
    {
                $name=$_POST['o_name'];
                //link columns with form data
                $owner_data=array('owner_name'=>$o_name,
                                    'owner_contact_no'=>$o_number,
                                    'owner_email_id'=>$o_email,
                                    'owner_address'=>$o_add,
                                    'owner_city'=>$o_city,
                                    'owner_q_no'=>$o_question,
                                    'owner_q_answer'=>$o_answer);

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
                //set status to 0 means missing 
                $pet_status=0;
                //link columns of table with form data
              $pet_data=array('owner_id'=>$o_id,
                                    'pet_name'=>$pet_name,
                                    'pet_height'=>$pet_height,
                                    'pet_height_unit'=>$unit,
                                    'pet_breed'=>$pet_breed,
                                    'pet_color'=>$pet_color,
                                    'pet_type'=>$pet_type,
                                    'pet_missing_date'=>$pet_date,
                      'pet_status'=>$pet_status);
        $color=$_POST['pet_color'];
                echo $color;
              //insert pet info in  wp_ju_missingpets table
              $wpdb->insert('wp_ju_missingpets',$pet_data);
    }
    else
    {  
        
        $_SESSION['flag']=true;
        echo '<span style="color:red;">there is any wrong entry please check the form</span>';
             //   header("Location:http://localhost/jeev-uthan/?page_id=39");

    }

}

?>

<html>

    <head>
     
    </head>
    <body>
    <form method="POST" style="margin-left: 500px" >
    <table border="0px">
        <tr><td colspan="3"><h3>Pet information:</h3></td></tr>
        <tr><td> Pet Name:</td><td colspan="2">  <input type ="text" name="pet_name" value="<?php echo $_POST['pet_name'];?>"></td><td><?php if($errPetName!==""){echo $errPetName;}if($errPNameSize!==""){echo $errPNameSize;}?></td></tr>
        <tr><td> Pet Height:</td><td colspan="2"> <input type="text" name="pet_height" placeholder="in cms" value="<?php echo $_POST['pet_height'];?>"></td><td><?php if($errPetHeight!==""){echo $errPetHeight;}?></td></tr>
    <tr><td>Pet Breed: </td><td colspan="2"><input type="text" name="pet_breed" value="<?php echo $_POST['pet_breed'];?>"></td><td><?php if($errPetBreed!==""){echo $errPetBreed;}?></td></tr>
    <tr><td> Pet color:</td><td colspan="2"> <input type="text" name="pet_color" value="<?php echo $_POST['pet_color'];?>"></td><td><?php if($errPetColor!==""){echo $errPetColor;}?></td></tr>
    <tr><td>Pet Type:</td><td  colspan="2"><select name="pet_type" id="type"><option value="">select</option>
            <option value="dog">dog</option>
            <option value="cat">cat</option>
            <option value="bird">bird</option>
            <option value="fish">fish</option>
            <option value="cow">cow</option>
            <option value="rabbit">rabbit</option>
            <option value="buffalo">buffalo</option>
            <option value="tortoise">tortoise</option></select></td>
             <script type="text/javascript">
  document.getElementById('type').value = "<?php echo $_POST['pet_type'];?>";
</script><td><?php if($errPetType!==""){echo $errPetType;}?></td></tr>
    <tr><td>Pet Missing date:</td><td colspan="2"><input type="text" id="Date" name="pet_date" value="<?php echo $_POST['pet_date'];?>"></td><td><?php if($errPetDate!==""){echo $errPetDate;}?></td></tr>
   <script type="text/javascript">

jQuery(document).ready(function() {
    jQuery('#Date').datepicker({
        dateFormat  :  'dd-mm-yy'
    });
});

</script>

    <tr><td colspan="3"><h3>Owner Information:</h3></td></tr>
    <tr><td>Name: </td> <td colspan="2"><input type ="text" name="o_name" required="required" placeholder="First letter capital" value="<?php echo $_POST['o_name'];?>"></td><td><?php if($errOName!==""){echo $errOName;}if($errONameSize){echo $errONameSize;}?></td></tr>
    <tr><td>contact no:</td><td colspan="2"><input type="text" name="o_zip" size="2" length="4" value="<?php echo $_POST['o_zip'];?>">&nbsp;<input type="text" id="mobile-number" placeholder="" name="o_number" size="13" length="11" value="<?php echo $_POST['o_number'];?>"></td><td><?php if($errPhone!==""){echo $errPhone;}?></td><td><?php if($errZip!==""){echo $errZip;}?></td></tr>
    <tr><td> Email id:</td><td colspan="2"> <input type="email" name="o_email" value="<?php echo $_POST['o_email'];?>"></td><td><?php if($errEmail!==""){echo $errEmail;}?></td></tr>
    <tr><td>Address:</td><td colspan="2"> <input type="text" name="o_add" value="<?php echo $_POST['o_add'];?>"></td><td><?php if($errAddress!==""){echo $errAddress;}?></td></tr>
    <tr><td>City:</td><td colspan="2"><input type="text" name="o_city" value="<?php echo $_POST['o_city'];?>"></td><td><?php if($errCity!==""){echo $errCity;}?></td></tr>
    <tr><td>security question:</td><td  colspan="2"><select name="o_question" length="10" value="<?php echo $_POST['o_question'];?>"><option value="">select</option>
            <option value="0">What is your best friend's name?</option>
            <option value="1">What is your home town?</option>
            <option value="2">Name of your favourite book?</option>
            <option value="3">What is your hobby?</option>
            <option value="4">Who is your ideal person?</option>
          </select></td>
    <tr><td>Answer:</td><td colspan="2"><input type="text" name="o_answer" value="<?php echo $_POST['o_answer'];?>"></td></tr>    
</tr>
    <tr ><td colspan="3"><input type="submit" name="submit"></td></tr>
    </table>
 <!-- photo of pet:<button name="upload" value="upload" ></button>-->
    
    
</form>
    </body>
   
</html>

