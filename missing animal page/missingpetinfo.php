<?php

/**
 * Template Name:missingpetinfo
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?>
<html>
    <head></head>
    <body>
<div id="maindiv">
    <h1 style="background-color: rgb(57,234,230);"><p style="align:center;">LIST OF MISSING PETS</p></h1>
    <?php
    global $wbdb;
      $uploads = wp_upload_dir(); 
      $count=100;
    $pet_data=$wpdb->get_results("select * from wp_ju_missingpets");
    foreach($pet_data as $a=>$b)
    {  
       $path='/'.$b->pet_photo_uploadedon.'/'.$b->pet_photo_name;?>
    <div style="margin-top:( <?php echo $count;?>+100)px; margin:100px;">
    <div style="margin-left: 10px;width:100px;height:100px;position: absolute; ">
        <?php echo '<img src="' . esc_url( $uploads['baseurl'] . $path) . '" href="#" width="200px" height="200px">';?>
        <form action="http://localhost/jeev-uthan/?page_id=147&petid=" method="POST">
            <input type="text" value="<?php echo $b->pet_id;?>" name="petid" style="visibility: hidden;">
            <input type="submit" value="change status" name="change_status"></form>
    </div>
    <div style="margin-left: 350px;width:200px;height:200px; position: absolute;">
        <table><tr><td colspan="2"><h3>Pet Information</h3></td></tr>
            <tr><td>Pet Name:</td><td><?php echo $b->pet_name?></td></tr>
            <tr><td>Pet Type:</td><td><?php echo $b->pet_type?></td></tr>
            <tr><td>Pet Breed:</td><td><?php echo $b->pet_breed?></td></tr>
            <tr><td>Pet Height:</td><td><?php echo $b->pet_height?></td></tr>
            <tr><td>Pet Color:</td><td><?php echo $b->pet_color?></td></tr>
            <tr><td>Pet Missing Date:</td><td><?php echo $b->pet_missing_date?></td></tr>
            <tr><td>Pet Missing Location:</td><td><?php echo $b->pet_location?></td></tr>
            <tr><td>Pet Status:</td><td><?php if($b->pet_status==0){echo "Missing";}else{echo "Found";}?></td></tr>
          </table>
    </div><?php
          $id= $b->owner_id;
        
    
    $o_data=$wpdb->get_results("select * from wp_ju_petowner_info where owner_id=$id");
        foreach($o_data as $x=>$y)
        { 
        ?>
            <div style="margin-left: 660px;width:200px;height:200px;">
                <table><tr><td colspan="2"><h3>Owner Information</h3></td></tr>
            <tr><td>Owner Name:</td><td><?php echo $y->owner_name?></td></tr>
            <tr><td>Contact no:</td><td><?php echo $y->owner_contact_no?></td></tr>
            <tr><td>Email id:</td><td><?php echo $y->owner_email_id?></td></tr>
            <tr><td>Address:</td><td><?php echo $y->owner_address?></td></tr>
            <tr><td>City:</td><td><?php echo $y->owner_city?></td></tr>
             </table>
    </div>
        <?php
        }
        ?>
      
     </div><?php
   $count+=100; } ?>
</div>
    </body></html>

