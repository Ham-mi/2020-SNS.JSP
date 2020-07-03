/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Set Header
3. Init Menu
4. Init Dropdown
5. Init Accordions


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
		var dropBtn4=document.getElementsByClassName("dropdown_content_sub")[4];
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