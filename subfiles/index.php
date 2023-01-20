<html> <p>This is app version 5 </p>
<?php $hn = gethostname();
$remote = $_SERVER['REMOTE_ADDR'];
?>
<ul> <li> Server host name is <?php echo gethostname(); ?> </li>
    <li> connecting address is <?php echo $remote; ?> </li>
</ul>
</html>