/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Set Header
3. Init Menu
4. Init Dropdown


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
	function search_active(){
		var search=document.getElementsByClassName("search_top")[0];
		var check=document.getElementsByClassName("check")[0];
		if(search.style.display=="none"){
			search.style.display="block";
			check.style.height="400px";
			$("#change6").html('<i class="fas fa-caret-up search_but"></i>');
		} else {
			search.style.display="none";
			check.style.height="120px";
			$("#change6").html('<i class="fas fa-caret-down search_but"></i>');		
		}
	}

	var catedis1=document.getElementsByClassName("card_display")[0];
	var catedis2=document.getElementsByClassName("card_display")[1];
	var catedis3=document.getElementsByClassName("card_display")[2];
	var catedis4=document.getElementsByClassName("card_display")[3];
	var catedis5=document.getElementsByClassName("card_display")[4];
	var catedis6=document.getElementsByClassName("card_display")[5];
	var catedis7=document.getElementsByClassName("card_display")[6];
	var catedis8=document.getElementsByClassName("card_display")[7];
	var catedis9=document.getElementsByClassName("card_display")[8];
	var catedis10=document.getElementsByClassName("card_display")[9];
	var catedis11=document.getElementsByClassName("card_display")[10];
	var catedis12=document.getElementsByClassName("card_display")[11];

	var catebut1=document.getElementById("cate1");
	var catebut2=document.getElementById("cate2");
	var catebut3=document.getElementById("cate3");
	var catebut4=document.getElementById("cate4");

	function catebut_active1(){
			catebut1.style.fontWeight="bold";
			catebut2.style.fontWeight="normal";
			catebut3.style.fontWeight="normal";
			catebut4.style.fontWeight="normal";
			catedis1.style.display="block";
			catedis2.style.display="block";
			catedis3.style.display="block";
			catedis4.style.display="block";
			catedis5.style.display="block";
			catedis6.style.display="block";
			catedis7.style.display="block";
			catedis8.style.display="block";
			catedis9.style.display="block";
			catedis10.style.display="block";
			catedis11.style.display="block";
			catedis12.style.display="block";
		}
	
		function catebut_active2(){
			catebut2.style.fontWeight="bold";
			catebut1.style.fontWeight="normal";
			catebut3.style.fontWeight="normal";
			catebut4.style.fontWeight="normal";
			catedis1.style.display="none";
			catedis2.style.display="block";
			catedis3.style.display="block";
			catedis4.style.display="block";
			catedis5.style.display="block";
			catedis6.style.display="block";
			catedis7.style.display="none";
			catedis8.style.display="none";
			catedis9.style.display="none";
			catedis10.style.display="none";
			catedis11.style.display="block";
			catedis12.style.display="none";

	}
		function catebut_active3(){
			catebut3.style.fontWeight="bold";
			catebut2.style.fontWeight="normal";
			catebut1.style.fontWeight="normal";
			catebut4.style.fontWeight="normal";
			catedis1.style.display="block";
			catedis2.style.display="none";
			catedis3.style.display="none";
			catedis4.style.display="none";
			catedis5.style.display="none";
			catedis6.style.display="none";
			catedis7.style.display="block";
			catedis8.style.display="block";
			catedis9.style.display="none";
			catedis10.style.display="none";
			catedis11.style.display="none";
			catedis12.style.display="none";
		}
	
		function catebut_active4(){
			catebut4.style.fontWeight="bold";
			catebut2.style.fontWeight="normal";
			catebut3.style.fontWeight="normal";
			catebut1.style.fontWeight="normal";
			catedis1.style.display="none";
			catedis2.style.display="none";
			catedis3.style.display="none";
			catedis4.style.display="none";
			catedis5.style.display="none";
			catedis6.style.display="none";
			catedis7.style.display="none";
			catedis8.style.display="none";
			catedis9.style.display="block";
			catedis10.style.display="block";
			catedis11.style.display="none";
			catedis12.style.display="block";
		}
	var sbut1=document.getElementById("s-but1");
	var sbut2=document.getElementById("s-but2");
	var sbut3=document.getElementById("s-but3");
		function sbut_active1(){
			sbut1.style.fontWeight="bold";
			sbut1.style.textDecoration="underline";
			sbut1.style.fontSize="22px";
			sbut2.style.fontWeight="normal";
			sbut2.style.textDecoration="none";
			sbut2.style.fontSize="20px";
			sbut3.style.fontWeight="normal";
			sbut3.style.textDecoration="none";
			sbut3.style.fontSize="20px";
		}
		function sbut_active2(){

			sbut2.style.fontWeight="bold";
			sbut2.style.textDecoration="underline";
			sbut2.style.fontSize="22px";
			sbut1.style.fontWeight="normal";
			sbut1.style.textDecoration="none";
			sbut1.style.fontSize="20px";
			sbut3.style.fontWeight="normal";
			sbut3.style.textDecoration="none";
			sbut3.style.fontSize="20px";
		}
		function sbut_active3(){

			sbut3.style.fontWeight="bold";
			sbut3.style.textDecoration="underline";
			sbut3.style.fontSize="22px";
			sbut2.style.fontWeight="normal";
			sbut2.style.textDecoration="none";
			sbut2.style.fontSize="20px";
			sbut1.style.fontWeight="normal";
			sbut1.style.textDecoration="none";
			sbut1.style.fontSize="20px";
		}