<?php

/**
 * Template Name:status
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
echo "status page";

$id;
extract($_POST);

if(isset($_POST['change_status']))
{
    $id=$_POST['petid'];
}
    
echo $id;
if(isset($_REQUEST['submit']))
{
    extract($_POST);
    global $wpdb;
  $pet_data=$wpdb->get_results("select owner_id from wp_ju_missingpets where pet_id='$id'");
  foreach($pet_data as $pet_data)
  {
      $owner_id=$pet_data->owner_id;echo $owner_id;
  }
  $owner_data=$wpdb->get_results("select * from wp_ju_petowner_info where owner_id='$owner_id'");
foreach($owner_data as $owner_data)
{
$email_id=$owner_data->owner_email_id;
    
$q_no=$owner_data->owner_q_no;
    
 $q_answer=$owner_data->owner_q_answer;
   
}
 echo $email_id;
    echo $q_no;
 echo $q_answer;
if($email_id===$_POST['email_id'] && $q_no===$_POST['question'] && $q_answer===$_POST['answer'])
{
   $result = $wpdb->update( 'wp_ju_missingpets', array( 'pet_status' => 1 ), array( 'owner_id' => $owner_id ) );
   
}
echo $result;

  
  }  
?>
<html><head>
    <body>
        <form action="" method="POST">
            <table>
                <tr>
                    <td colspan="2"><h1>Verify Owner</h1></td> 
                </tr>
                <tr>
                    <td>Email id:</td><td><input type="text" name="email_id"></td>
                    <td>Security Question:</td><td><select name="question"  id="question"><option value="">select</option>
            <option value="0">What is your best friend's name?</option>
            <option value="1">What is your home town?</option>
            <option value="2">Name of your favourite book?</option>
            <option value="3">What is your hobby?</option>
            <option value="4">Who is your ideal person?</option>
            </select></td>
                </tr>
                <tr><td>Answer that you have given while posting:</td><td><td><input type="text" name="answer"></td></tr>
                <tr><td colspan="2"><input type="submit" name="submit" value="Change status"></td></tr>
            </table>
        </form>
    </body>
    </head></html>
<?php

?>
