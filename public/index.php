<?php require_once("../resources/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container" style="background-color: #9d9d9d">

    <div class="row">
        <!--categories was here-->
        <?php include(TEMPLATE_FRONT . DS . "side_navi.php") ?>

        <div class="col-md-9">

            <div class="row carousel-holder">

                <div class="col-md-12">
                    <!--caroussel-->
                    <?php include(TEMPLATE_FRONT . DS . "slider.php") ?>
                </div>

            </div>

            <div class="row">

                <!--<h1><?php echo $_SESSION['product_1']; ?></h1>-->

                <?php
                get_products_with_pagination();
                ?>


            </div> <!--ROW EINDE HIER-->

        </div>

    </div>

</div>
<!-- /.container -->
<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>