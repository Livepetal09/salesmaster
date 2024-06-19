<style type="text/css">
    a{text-decoration: none;}
</style>
<div style="float: right;">
    <?=$name?> | 
    <?php if($admin==1){ ?>
    <a href="sales.php">POS</a> | 
    <a href="transactions.php">Transactions</a> | 
<a href="user.php">Users</a> | <?php } ?>
<a href="?logout=true">Logout</a>
</div>