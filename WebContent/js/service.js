/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Set Header
3. Init Menu
4. Init Dropdown
5. Init Google Map


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
	var map;

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
	initGoogleMap();

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

	5. Init Google Map

	*/

	function initGoogleMap()
	{
		var myLatlng = new google.maps.LatLng(34.063685,-118.272936);
    	var mapOptions = 
    	{
    		center: myLatlng,
	       	zoom: 14,
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			draggable: true,
			scrollwheel: false,
			zoomControl: true,
			zoomControlOptions:
			{
				position: google.maps.ControlPosition.RIGHT_CENTER
			},
			mapTypeControl: false,
			scaleControl: false,
			streetViewControl: false,
			rotateControl: false,
			fullscreenControl: true,
			styles:
			[
			  {
			    "featureType": "road.highway",
			    "elementType": "geometry.fill",
			    "stylers": [
			      {
			        "color": "#ffeba1"
			      }
			    ]
			  }
			]
    	}

    	// Initialize a map with options
    	map = new google.maps.Map(document.getElementById('map'), mapOptions);

		// Re-center map after window resize
		google.maps.event.addDomListener(window, 'resize', function()
		{
			setTimeout(function()
			{
				google.maps.event.trigger(map, "resize");
				map.setCenter(myLatlng);
			}, 1400);
		});
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