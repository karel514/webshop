$(document).ready(function(){

$('#demo').hover(
  function () {
    $(this).toggle();


});



});

//afbeelding in admin slides
$(document).ready(function(){

$(".image_container").click(function () {
    var user_input;

    location.reload();
    return user_input = confirm("Ben je zeker dat je deze slide wilt verwijderen?");

})

});
