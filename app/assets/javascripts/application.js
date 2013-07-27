// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
<<<<<<< HEAD
//= require jquery_ujs.js 
//= require jquery/jquery.watermark.js
//= require_tree 



$(function () {
		$(".login_password").watermark("Password");
		})
		$(function () {
		$(".login_confirm").watermark("Confirm Password");
		})
		$(function () {
		$(".about").watermark("Add a professional summary");
		})
		$(function () {
		$(".email").watermark("Email");
		})
		$(function () {
		$(".name").watermark("Full Name");
		})
		$(function () {
		$(".industry").watermark("ex: Financial Services");
		})
		$(function () {
		$(".location").watermark("ex: Denver, Colorado");
		})
		$(function () {
		$(".network").watermark("Columbia University");
		})
		$(function () {
		$(".share-twitter").watermark("Twitter Profile URL");
		})
		$(function () {
		$(".share-facebook").watermark("Facebook Profile URL");
		})
		$(function () {
		$(".share-linkedin").watermark("Linkedin Profile URL");
		})
		$(function () {
		$(".share-pinterest").watermark("Pinterest Profile URL");
		})
	$(function () {
		$(".headline").watermark("Write a professional headline");
		})
		$(function () {
		$(".dob").watermark("ex. September 16, 1988");
		})
		$(function () {
		$(".phone").watermark("ex. (555) 555-5555");
		})
		$(function () {
		$(".website").watermark("Add a website");
		})
		$(function () {
		$(".network").watermark("Join a network");
		})
=======
//= require jquery_ujs
//= require bootstrap
//= require_tree .
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
  
$('[placeholder]').focus(function() {
  var input = $(this);
  if (input.val() == input.attr('placeholder')) {
    input.val('');
    input.removeClass('placeholder');
  }
}).blur(function() {
  var input = $(this);
  if (input.val() == '' || input.val() == input.attr('placeholder')) {
    input.addClass('placeholder');
    input.val(input.attr('placeholder'));
  }
}).blur().parents('form').submit(function() {
  $(this).find('[placeholder]').each(function() {
    var input = $(this);
    if (input.val() == input.attr('placeholder')) {
      input.val('');
    }
  })
});


<<<<<<< HEAD

$('#bookmark').tooltip()
$('#facebook').tooltip()
$('#twitter').tooltip()
$('#linkedin').tooltip()
$('#pinterest').tooltip()
$('#mail').tooltip()
$('#add').tooltip()
$('#delete').tooltip()
$('#recommend').tooltip()

=======
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
