<!DOCTYPE html>
<%@page import="com.Answers"%>
<html lang="en">
<head>
<title>Varuga Varuga</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-70411574-1', 'auto');
  ga('send', 'pageview');

</script>

</head>
<body>

	<div class="container">
		<div class="row qn-row">
			<div class="col-xs-1"></div>
			<div class="col-xs-10 qn-wrapprer">
				<div class="row ask-name">
					<div>Welcome..!!!</div>
					<div class="text-wrapper">
						<input type="text" class="ip-ans" id="name"
							placeholder="Tell me your name">
					</div>
					<button type="button" id="name-btn" class="btn btn-primary btn-lg">Go</button>
				</div>

				<div class="row ask-freq-qn1">

					<div class="grn">Well</div>
					<div class="mbl-font">Most used words in whatsapp..</div>
					<div>
						<div class=" col-xs-8 ip-container">
							<input type="text" class="ip-ans freq-ans" placeholder="1st word">
						</div>
						<div class=" col-xs-3">
							<button type="button" class="freq-qn-btn btn btn-primary btn-lg">Go</button>
							<div class="thumbs-up" aria-hidden="true"></div>
						</div>
					</div>

					<div class="ask-freq-qn2">
						<div class=" col-xs-8 ip-container">
							<input type="text" class="ip-ans freq-ans" placeholder="Then">
						</div>
						<div class=" col-xs-3">
							<button type="button" class="freq-qn-btn btn btn-primary btn-lg">Go</button>
							<div class="thumbs-up" aria-hidden="true"></div>
						</div>
					</div>

					<div class="ask-freq-qn3">
						<div class=" col-xs-8 ip-container">
							<input type="text" class="ip-ans freq-ans" placeholder="and then">
						</div>
						<div class=" col-xs-3">
							<button type="button" class="freq-qn-btn btn btn-primary btn-lg">Go</button>
							<div class="thumbs-up" aria-hidden="true"></div>
						</div>
					</div>
				</div>
				
				<div class="row love-wrapper">
					<div class="mbl-font">Me: Love you</div>
					<div>
						<div class=" col-xs-8 ip-container">

							<input type="text" class="ip-ans freq-ans" placeholder="You...">
						</div>
						<div class=" col-xs-3">
							<button type="button" class="love-qn-btn btn btn-primary btn-lg">Go</button>
							<div class="thumbs-up" aria-hidden="true"></div>
						</div>
					</div>
					<div class="video-wrapper col-xs-12">
						<div class="grn">Welcome loosu janani</div>
					</div>
					<div id="placeholder">						
					</div>
				</div>
				<div class="music">
					<audio  id="bgm" controls>
						<source src="css/bgm.mp3" type="audio/mpeg">
					</audio>
				</div>
			</div>

		</div>
		<div class="col-xs-1"></div>
	</div> <!-- End of body -->
	
<script type="text/javascript">
!function(a){var b=/iPhone/i,c=/iPod/i,d=/iPad/i,e=/(?=.*\bAndroid\b)(?=.*\bMobile\b)/i,f=/Android/i,g=/IEMobile/i,h=/(?=.*\bWindows\b)(?=.*\bARM\b)/i,i=/BlackBerry/i,j=/BB10/i,k=/Opera Mini/i,l=/(?=.*\bFirefox\b)(?=.*\bMobile\b)/i,m=new RegExp("(?:Nexus 7|BNTV250|Kindle Fire|Silk|GT-P1000)","i"),n=function(a,b){return a.test(b)},o=function(a){var o=a||navigator.userAgent,p=o.split("[FBAN");return"undefined"!=typeof p[1]&&(o=p[0]),this.apple={phone:n(b,o),ipod:n(c,o),tablet:!n(b,o)&&n(d,o),device:n(b,o)||n(c,o)||n(d,o)},this.android={phone:n(e,o),tablet:!n(e,o)&&n(f,o),device:n(e,o)||n(f,o)},this.windows={phone:n(g,o),tablet:n(h,o),device:n(g,o)||n(h,o)},this.other={blackberry:n(i,o),blackberry10:n(j,o),opera:n(k,o),firefox:n(l,o),device:n(i,o)||n(j,o)||n(k,o)||n(l,o)},this.seven_inch=n(m,o),this.any=this.apple.device||this.android.device||this.windows.device||this.other.device||this.seven_inch,this.phone=this.apple.phone||this.android.phone||this.windows.phone,this.tablet=this.apple.tablet||this.android.tablet||this.windows.tablet,"undefined"==typeof window?this:void 0},p=function(){var a=new o;return a.Class=o,a};"undefined"!=typeof module&&module.exports&&"undefined"==typeof window?module.exports=o:"undefined"!=typeof module&&module.exports&&"undefined"!=typeof window?module.exports=p():"function"==typeof define&&define.amd?define("isMobile",[],a.isMobile=p()):a.isMobile=p()}(this);

$(document).ready(function() {

	(function () {
        if (isMobile.apple.phone || isMobile.android.phone || isMobile.seven_inch) {
			$('body').addClass('mobile');
        }
        else {
        	$('body').addClass('desktop');
        }
    })();

	
	function say_no (element) {
		element.animate({
			'marginLeft' : "-=50px" //moves left
		}, 500);
		element.animate({
			'marginLeft' : "+=100px" //moves left
		}, 500);
		element.animate({
			'marginLeft' : "-=50px" //moves left
		}, 500);
	}

	$('#name-btn').click(function() {
		var name = $("input#name").val().toLowerCase();
		
		if (name != "janani") {
			say_no($(".text-wrapper"));
		}
		else {
			$.get('Answers', {
	            reset : "reset"
	    	}, function(responseText) { });
			
			$('.ask-name').fadeOut("slow", function(){
				$('.ask-freq-qn1').fadeIn("slow");
			});
			
			$('.music').fadeIn();
			document.getElementById("bgm").play();
		}
	});
	
	var success_count = 0;
	
	$('.freq-qn-btn').click(function(){
		var curr = $(this);
		var ans = $(this).parent().parent().find('.freq-ans').val();
		ans = ans.toLowerCase();
		
	    $.get('Answers', {
	            whatsapp : ans,
	            type	: "whatsapp"
	    }, function(responseText) {
	            if(responseText == "success"){
	            	curr.parent().parent().find('input').attr("disabled", "disabled");
	            	curr.fadeOut("slow", function(){
	            		$(this).parent().parent().find('.freq-ans').css("border", "none");
	            		curr.parent().find('.thumbs-up').fadeIn("slow");
	            		++success_count;
	            		
	            		if(success_count == 1){
	            			$('.ask-freq-qn2').fadeIn();
	            		}
	            		if(success_count == 2){
	            			$('.ask-freq-qn3').fadeIn();
	            		}
	            		if(success_count == 3){
	            			$('.ask-freq-qn1').fadeOut("slow", function(){
	            				$('.love-wrapper').fadeIn("slow");
	            			});
	            		}
	            	});
	            }
	            else{
	            	say_no(curr.parent().parent().find('.ip-container'));
	            }
	    });
	});
	
	$('.love-qn-btn').click(function(){
		var curr = $(this);
		var ans = $(this).parent().parent().find('.freq-ans').val();
		ans = ans.toLowerCase();
		
	    $.get('Answers', {
	            whatsapp : ans,
	            type	: "love"
	    }, function(responseText) {
	            if(responseText.split(";")[0] == "success"){
	            	curr.parent().parent().find('input').attr("disabled", "disabled");
	            	curr.fadeOut();
	            	curr.parent().parent().find('.freq-ans').css("border", "none");
            		curr.parent().find('.thumbs-up').fadeIn("slow");
            		$('.video-wrapper').fadeIn();
            		$("#placeholder").append(responseText.split(";")[1]);
            		
            		$('.music').fadeOut();
        			document.getElementById("bgm").pause();
            		
	            }
	            else{
	            	say_no(curr.parent().parent().find('.ip-container'));
	            }
	    });
	});
	
	$('input').keypress(function (e) {
		if (e.which == 13) {
			$(this).parent().next().find('button').click();
			$(this).parent().next().click();
	  	}
	});
    
 });
</script>
</body>
</html>
