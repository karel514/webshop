<?php require_once("../resources/config.php"); ?>

<?php include (TEMPLATE_FRONT . DS . "header.php")?>

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer">
            <h1>A Warm Welcome!</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
            <p><a class="btn btn-primary btn-large">Call to action!</a>
            </p>
        </header>

        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3 style="color: white">------Related books------</h3>
                <br>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <?php
            get_products_in_cat_page();
            ?>


        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->
<?php include (TEMPLATE_FRONT . DS . "footer.php")?>