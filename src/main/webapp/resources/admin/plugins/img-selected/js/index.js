// item selection
$('#img-selected li').click(function () {
  $(this).toggleClass('selected').siblings("li").removeClass("selected");
  var imgpath = $("img",this).attr('src');
});

