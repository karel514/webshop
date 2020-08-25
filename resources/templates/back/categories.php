
<?php
add_category();
?>
            

<h1 class="page-header">
  Product Categories

    <h4 class="bg-success text-center"><?php display_message();?></h4>

</h1>


<div class="col-md-4">
    
    <form action="" method="post">
    
        <div class="form-group">
            <label for="category-title">Title</label>
            <input name="cat_title" type="text" class="form-control">
        </div>

        <div class="form-group">
            
            <input name="add_category" type="submit" class="btn btn-primary" value="Add Category">
        </div>      


    </form>


</div>


<div class="col-md-8">

    <table class="table">
            <thead>

        <tr>
            <th>id</th>
            <th>Title</th>
        </tr>
            </thead>

        <?php
        show_categories_in_admin();
        ?>


    <tbody>

    </tbody>

        </table>

</div>


