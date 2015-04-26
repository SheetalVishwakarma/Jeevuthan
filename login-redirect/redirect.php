<?php
/**
 * Template Name: redirecting
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
//get_header(); ?>
<?php
if(isset($_REQUEST['vet']))
{
 wp_redirect('http://localhost/jeevuthan/index.php/register-vet/');   
}
if(isset($_REQUEST['ngo']))
{
 wp_redirect('http://localhost/jeevuthan/index.php/register-ngo/');   
}
?>
<html>
<head> </head>
    <body>
        <form action="" method="POST" style="margin-left: 500px" >
    <table border="0px">
        <tr><td colspan="3"><h3>Vet registration</h3></td></tr>
        <tr><td colspan="3"><input type ="submit" name="vet" value="Register Vet"></td></tr>
        <tr><td colspan="3"><h3>NGO registration</h3></td></tr> 
        <tr><td colspan="3"><input type ="submit" name="ngo" value="Register NGO"></td></tr>
            
    </table>
    </form>
            </body>
            </html>