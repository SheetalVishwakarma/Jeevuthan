<?php

/**
 * Template Name: Reg
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
//get_header();
session_start();
$_SESSION['flag']=false;
?>
<?php
    if(isset($_REQUEST['submit']))
    {  
        if(($_POST['Location'])!=="")
        {
            global $wpdb;
            $loc = $_POST['Location'];
            $d = $wpdb->get_results("select location_id FROM wp_ju_location WHERE location_name='$loc'");
            foreach ($d as $k => $v) {
           $ver =$v->location_id;

              // $wpdb->insert('wp_ju_vets_info',$data);
           }
        }
        elseif(($_POST['othertext'])!=="")
        {
                          
        }
        else
        {
            echo 'either select location or enter new location'; 
        }
         
    if(($_POST['n_name'])!== "")
    {extract($_POST);
                //link columns with form data
                $ngo_data=array('ngo_name'=>$n_name,
                    'ngo_address'=>$n_add,
                    'ngo_contact_no1'=>$n_contact1,
                    'ngo_contact_no2'=>$n_contact2,
                    'ngo_contact_no3'=>$n_contact3,
                    'ngo_email'=>$n_email,
                    'ngo_website'=>$n_website,
                        'ngo_location_id'=>$ver);
                global $wpdb;
                //$wpdb->insert('wp_ju_ngo_info',$ngo_data);
                $dataentry=$wpdb->insert('wp_ju_ngo_info',$ngo_data);
                if($dataentry===1)
                {
                       $_SESSION['flag']=true;            
                }
    }
    }?>
<html>
    <body>
    <form method="POST" style="margin-left: 500px" >
    <table border="0px">
   

    <tr><td colspan="3"><h3>NGO Registration</h3></td></tr>
    <tr><td>Name: </td> <td colspan="2"><input type ="text" name="n_name" required="required" placeholder="First letter capital" value="<?php if($_SESSION['flag']===false){echo $_POST['n_name'];}?>"></td></tr>
    <tr><td>Address:</td><td colspan="2"> <input type="text" name="n_add"></td></tr>
    <tr><td>contact no1:</td><td colspan="2"><input type="text" id="mobile-number" placeholder="" name="n_contact1" size="13" length="11"></td></tr>
    <tr><td>contact no2:</td><td colspan="2"><input type="text" id="mobile-number" placeholder="" name="n_contact2" size="13" length="11"></td></tr>
    <tr><td>contact no3:</td><td colspan="2"><input type="text" id="mobile-number" placeholder="" name="n_contact3" size="13" length="11"></td></tr>
    <tr><td> Email id:</td><td colspan="2"> <input type="email" name="n_email"></td></tr>
    <tr><td> WebSite :</td><td colspan="2"><input type="text" name="n_website"></td></tr>
    <tr><td colspan="3"><input type="submit" name="submit"></td></tr>
    
 <!-- photo of pet:<button name="upload" value="upload" ></button>-->
    <tr>
    <td>nearby location of NGO</td>
        <?php
         global $wpdb; 
         $qu = $wpdb->get_results("SELECT location_name FROM wp_ju_location");
        ?>
    <td><select name="Location" id="location">
         <option value="">select</option>
         <?php 
         foreach($qu as $a=>$b)
         {
         ?>
     
         <option value="<?php echo $b->location_name;?>">
         <?php        
         echo $b->location_name."<br>";
         }
         ?>
         </option>
        </select>
        
    <input type="submit" name="other" value="other">
    <?php if(isset($_REQUEST['other']))
    {
        extract($_POST);
        
        if(($_POST['Location'])!=="")
        {?><script type="text/javascript">
        document.getElementById('location').value = "<?php echo $_POST['Location'];?>";
        </script>
            <?php
            echo 'you have already choose the location';
      
        }
 else {
            echo '<input type ="text" name="othertext" >';
 }
        
     }?>
      </td></tr>
    
</table> 
</form>
</body>
</html>