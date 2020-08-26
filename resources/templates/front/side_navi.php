<br>
<br>


<div class="col-md-3 ">
    <p id="whl" class="lead text-center"><strong>Warhammer Library</strong></p>
    <p class="text-center">Choose any faction</p>
    <div class="list-group">


        <!--ier de sidebar tabelcategories eig-->
        <?php
        get_categories();
        ?>
    </div>
    <form action="search.php" method="post">
        <input type="text" name="search" placeholder="Title or author">
        <button id="srchbtn" type="submit" name="submit-search">Search</button>
    </form>
    <div class="article_container">
        <?php search(); ?>
    </div>

</div>

