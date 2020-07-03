/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Set Header
3. Init Menu
4. Init Dropdown
5. Init Accordions
6. Init Tabs
7. Init Loaders
8. Init Milestones


******************************/

$(document).ready(function()
{
	"use strict";

	/* 

	1. Vars and Inits

	*/

	var header = $('.header');
	var hamburgerBar = $('.hamburger_bar');
	var hamburger = $('.hamburger');
	var ctrl = new ScrollMagic.Controller();

	setHeader();

	$(window).on('resize', function()
	{
		setHeader();

		setTimeout(function()
		{
			$(window).trigger('resize.px.parallax');
		}, 375);
	});

	$(document).on('scroll', function()
	{
		setHeader();
	});

	initMenu();
	initDropdown();
	initAccordions();
	initTabs();
	initLoaders();
	initMilestones();

	/* 

	2. Set Header

	*/

	function setHeader()
	{
		if($(window).scrollTop() > 91)
		{
			header.addClass('scrolled');
			hamburgerBar.addClass('scrolled');
		}
		else
		{
			header.removeClass('scrolled');
			hamburgerBar.removeClass('scrolled');
		}
	}

	/* 

	3. Init Menu

	*/

	function initMenu()
	{
		if($('.menu').length)
		{
			var menu = $('.menu');
			hamburger.on('click', function()
			{
				hamburger.toggleClass('active');
				menu.toggleClass('active');
			});
		}
	}

	/* 

	4. Init Dropdown

	*/

	function initDropdown()
	{
		if($('.domain_search_dropdown').length)
		{
			var dd = $('.domain_search_dropdown');
			var ddItems = $('.domain_search_dropdown ul li');
			var ddSelected = $('.domain_search_selected');
			dd.on('click', function()
			{
				dd.toggleClass('active');
			});
			ddItems.on('click', function()
			{
				var selectedDomain = $(this).text();
				ddSelected.text(selectedDomain);
			});
		}
	}

	/* 

	5. Init Accordions

	*/

	function initAccordions()
	{
		if($('.accordion').length)
		{
			var accs = $('.accordion');

			accs.each(function()
			{
				var acc = $(this);

				if(acc.hasClass('active'))
				{
					var panel = $(acc.next());
					var panelH = panel.prop('scrollHeight') + "px";
					
					if(panel.css('max-height') == "0px")
					{
						panel.css('max-height', panel.prop('scrollHeight') + "px");
					}
					else
					{
						panel.css('max-height', "0px");
					} 
				}

				acc.on('click', function()
				{
					if(acc.hasClass('active'))
					{
						acc.removeClass('active');
						var panel = $(acc.next());
						var panelH = panel.prop('scrollHeight') + "px";
						
						if(panel.css('max-height') == "0px")
						{
							panel.css('max-height', panel.prop('scrollHeight') + "px");
						}
						else
						{
							panel.css('max-height', "0px");
						} 
					}
					else
					{
						acc.addClass('active');
						var panel = $(acc.next());
						var panelH = panel.prop('scrollHeight') + "px";
						
						if(panel.css('max-height') == "0px")
						{
							panel.css('max-height', panel.prop('scrollHeight') + "px");
						}
						else
						{
							panel.css('max-height', "0px");
						} 
					}
				});
			});
		}
	}

	/* 

	6. Init Tabs

	*/

	function initTabs()
	{
		if($('.tab').length)
		{
			$('.tab').on('click', function()
			{
				$('.tab').removeClass('active');
				$(this).addClass('active');
				var clickedIndex = $('.tab').index(this);

				var panels = $('.tab_panel');
				panels.removeClass('active');
				$(panels[clickedIndex]).addClass('active');
			});
		}
	}

	/* 

	7. Init Loaders

	*/

	function initLoaders()
	{
		if($('.loader').length)
		{
			var loaders = $('.circle');

			loaders.each(function()
			{
				var loader = $(this);
				var endValue = $(loader).data('perc');

				var loaderScene = new ScrollMagic.Scene({
		    		triggerElement: this,
		    		triggerHook: 'onEnter',
		    		reverse:false
		    	})
		    	.on('start', function()
		    	{
		    		loader.circleProgress({
						startAngle: 4.66,
						thickness: 5,
						size: 200,
						emptyFill:"transparent",
						fill: {gradient:["#487fee", "#b632fa"]},
					}).on('circle-animation-progress', function(event, progress, stepValue)
						{
							$(this).find('strong').text(Math.round(stepValue * 100) + "%");
						});
		    	})
			    .addTo(ctrl);
			});
		}
	}

	/* 

	8. Init Milestones

	*/

	function initMilestones()
	{
		if($('.milestone_counter').length)
		{
			var milestoneItems = $('.milestone_counter');

	    	milestoneItems.each(function(i)
	    	{
	    		var ele = $(this);
	    		var endValue = ele.data('end-value');
	    		var eleValue = ele.text();

	    		/* Use data-sign-before and data-sign-after to add signs
	    		infront or behind the counter number */
	    		var signBefore = "";
	    		var signAfter = "";

	    		if(ele.attr('data-sign-before'))
	    		{
	    			signBefore = ele.attr('data-sign-before');
	    		}

	    		if(ele.attr('data-sign-after'))
	    		{
	    			signAfter = ele.attr('data-sign-after');
	    		}

	    		var milestoneScene = new ScrollMagic.Scene({
		    		triggerElement: this,
		    		triggerHook: 'onEnter',
		    		reverse:false
		    	})
		    	.on('start', function()
		    	{
		    		var counter = {value:eleValue};
		    		var counterTween = TweenMax.to(counter, 4,
		    		{
		    			value: endValue,
		    			roundProps:"value", 
						ease: Circ.easeOut, 
						onUpdate:function()
						{
							document.getElementsByClassName('milestone_counter')[i].innerHTML = signBefore + counter.value + signAfter;
						}
		    		});
		    	})
			    .addTo(ctrl);
	    	});
		}
	}

});

	function dropbtn_active0(dropdown_content_sub){
		var dropBtn0=document.getElementsByClassName("dropdown_content_sub")[0];
		var dropBtn1=document.getElementsByClassName("dropdown_content_sub")[1];
		var dropBtn2=document.getElementsByClassName("dropdown_content_sub")[2];
		var dropBtn3=document.getElementsByClassName("dropdown_content_sub")[3];
		var dropBtn4=document.getElementsByClassName("dropdown_content_sub")[4];
		if(dropBtn0.style.display=="none"){
			dropBtn0.style.display="block";
			dropBtn1.style.display="none";
			dropBtn2.style.display="none";
			dropBtn3.style.display="none";
			dropBtn4.style.display="none";
			$("#change1").html('<i class="fa fa-caret-up" aria-hidden="true"></i>');
		} else{
			dropBtn0.style.display="none";
			$("#change1").html('<i class="fa fa-caret-down" aria-hidden="true"></i>');
		}
	}
	function dropbtn_active1(dropdown_content_sub){
		var dropBtn0=document.getElementsByClassName("dropdown_content_sub")[0];
		var dropBtn1=document.getElementsByClassName("dropdown_content_sub")[1];
		var dropBtn2=document.getElementsByClassName("dropdown_content_sub")[2];
		var dropBtn3=document.getElementsByClassName("dropdown_content_sub")[3];
		var dropBtn4=document.getElementsByClassName("dropdown_content_sub")[4];
		if(dropBtn1.style.display=="none"){
			dropBtn1.style.display="block";
			dropBtn0.style.display="none";
			dropBtn2.style.display="none";
			dropBtn3.style.display="none";
			dropBtn4.style.display="none";
			$("#change2").html('<i class="fa fa-caret-up" aria-hidden="true"></i>');
		} else{
			dropBtn1.style.display="none";
			$("#change2").html('<i class="fa fa-caret-down" aria-hidden="true"></i>');
		}
	}
	function dropbtn_active2(dropdown_content_sub){
		var dropBtn0=document.getElementsByClassName("dropdown_content_sub")[0];
		var dropBtn1=document.getElementsByClassName("dropdown_content_sub")[1];
		var dropBtn2=document.getElementsByClassName("dropdown_content_sub")[2];
		var dropBtn3=document.getElementsByClassName("dropdown_content_sub")[3];
		var dropBtn4=document.getElementsByClassName("dropdown_content_sub")[4];
		if(dropBtn2.style.display=="none"){
			dropBtn2.style.display="block";
			dropBtn1.style.display="none";
			dropBtn0.style.display="none";
			dropBtn3.style.display="none";
			dropBtn4.style.display="none";
			$("#change3").html('<i class="fa fa-caret-up" aria-hidden="true"></i>');
		} else{
			dropBtn2.style.display="none";
			$("#change3").html('<i class="fa fa-caret-down" aria-hidden="true"></i>');
		}
	}
	function dropbtn_active3(dropdown_content_sub){
		var dropBtn0=document.getElementsByClassName("dropdown_content_sub")[0];
		var dropBtn1=document.getElementsByClassName("dropdown_content_sub")[1];
		var dropBtn2=document.getElementsByClassName("dropdown_content_sub")[2];
		var dropBtn3=document.getElementsByClassName("dropdown_content_sub")[3];
		var dropBtn4=document.getElementsByClassName("dropdown_content_sub")[4];
		if(dropBtn3.style.display=="none"){
			dropBtn3.style.display="block";
			dropBtn1.style.display="none";
			dropBtn2.style.display="none";
			dropBtn0.style.display="none";
			dropBtn4.style.display="none";
			$("#change4").html('<i class="fa fa-caret-up" aria-hidden="true"></i>');
		} else{
			dropBtn3.style.display="none";
			$("#change4").html('<i class="fa fa-caret-down" aria-hidden="true"></i>');
		}
	}
	function dropbtn_active4(dropdown_content_sub){
		var dropBtn0=document.getElementsByClassName("dropdown_content_sub")[0];
		var dropBtn1=document.getElementsByClassName("dropdown_content_sub")[1];
		var dropBtn2=document.getElementsByClassName("dropdown_content_sub")[2];
		var dropBtn3=document.getElementsByClassName("dropdown_content_sub")[3];
		var dropBtn4=document.getElemesntsByClassName("dropdown_content_sub")[4];
		if(dropBtn4.style.display=="none"){
			dropBtn4.style.display="block";
			dropBtn1.style.display="none";
			dropBtn2.style.display="none";
			dropBtn3.style.display="none";
			dropBtn0.style.display="none";
			$("#change5").html('<i class="fa fa-caret-up" aria-hidden="true"></i>');
		} else{
			dropBtn4.style.display="none";
			$("#change5").html('<i class="fa fa-caret-down" aria-hidden="true"></i>');
		}
	}


var uploadFile = $('.fileBox .uploadBtn');
uploadFile.on('change', function(){
	if(window.FileReader){
		var filename = $(this)[0].files[0].name;
	} else {
		var filename = $(this).val().split('/').pop().split('\\').pop();
	}
	$(this).siblings('.fileName').val(filename);
});

function check(){
	if(document.recommend.resnsid.value==""){
		alert("아이디 미입력");
		document.recommend.resnsid.focus();
	}else if(document.recommend.rediv.value==""){
		alert("분류 미입력");
	}else if(checkbox()==false){
		alert("카테고리 미입력. 한개 이상 체크해 주세요.");
	}else if(document.recommend.rereason.value==""){
		alert("이유 미입력");
		document.recommend.rereason.focus();
	}else{
		document.recommend.submit();
	}
}

function checkbox(){
	var chkbox = document.getElementsByName('recate');
	var chk = false;
	for (var i=0; i<chkbox.length;i++){
		if(chkbox[i].checked){
			chk=true;
		}
	}
	return chk;
}
function marketcheck(){
	if(document.market.userid.value==""){
		alert("로그인이 필요합니다.")
		document.market.userid.focus();
	}else if(document.market.snsid.value==""){
		alert("아이디 미입력")
		document.market.snsid.focus();
	}else if(document.market.snsname.value==""){
		alert("이름 미입력")
		document.market.snsname.focus();
	}else if(snscheckbox()==false){
		alert("카테고리 미입력. 한개 이상 체크해 주세요.");
	}else if(document.market.snsaddr.value==""){
		alert("주소 미입력")
		document.market.snsaddr.focus();
	}else if(snscheckbox2()==false){
		alert("방법 미입력. 한개 이상 체크해 주세요.");
	}else {
		document.market.submit();
	}
}
function snscheckbox(){
	var chkbox = document.getElementsByName('snscate');
	var chk = false;
	for (var i=0; i<chkbox.length;i++){
		if(chkbox[i].checked){
			chk=true;
		}
	}
	return chk;
}
function snscheckbox2(){
	var chkbox = document.getElementsByName('snsway');
	var chk = false;
	for (var i=0; i<chkbox.length;i++){
		if(chkbox[i].checked){
			chk=true;
		}
	}
	return chk;
}

var tagcheck = 0;

function addtagclick(){
	var tagvalue = document.market.snsaddtag.value;
	var displaychange=document.getElementById('addtagdis');
	if(displaychange.style.display==""){
		displaychange.style.display="flex";
	}
	if(tagcheck<5){
		if(tagvalue!=""){
			if(duplicatecheck(tagvalue)){
				var selectnum = "#addtagcheck"+tagcheck;
				$(selectnum).html('<label><input type="checkbox" name="snstag" value="'+tagvalue+'">'+tagvalue+'</label>');
				tagcheck++;
				document.market.snsaddtag.value ="";
			}else{ alert("중복값은 입력할 수 없습니다."); }
		}else{ alert("태그의 값을 입력해 주세요."); }
	}else{ alert("더이상 추가할 수 없습니다."); }
}

//추가 태그 중복 체크
function duplicatecheck(chkval){
	var chkbox = document.getElementsByName('snstag');
	var chk = true;
	for (var i=0; i<chkbox.length;i++){
		if(chkbox[i].value==chkval){
			chk=false;
		}
	}
	document.market.snsaddtag.value ="";
	return chk;
}