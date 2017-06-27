var baseurl = location.href;
jQuery(".sidebar-menu li").each(function(){
	var u1 = $(this).children('a').attr('href')
	if(baseurl.indexOf(u1) != -1){
		$(this).addClass("active");
		var parent = $(this).parent();
		parent.parent().addClass("active");
	}
});	