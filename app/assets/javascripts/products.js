$(document).ready(function(){
	//Product Slideshow
	$( 'ul.p_menu li' ).click( function(e){
		e.preventDefault();
		$( 'ul.p_menu li' ).removeClass( 'active' );
		$( this ).addClass( 'active' );
		var pMenuIndex = $( this ).index();
		if( pMenuIndex == 0 ){
			$( '.products #parquet' ).fadeOut( function(){
				$( '.products #top_plus' ).fadeIn();
			});
		}else if( pMenuIndex == 1 ){
			$( '.products #top_plus' ).fadeOut( function(){
				$( '.products #parquet' ).fadeIn();
			});
		}
	})


	$( '.colors ul li').click( function(e){
		e.preventDefault();
		$('.colors ul li').removeClass( 'active' );
		$( this ).addClass( 'active' );
		var index = $( this ).index();
		if( index == [0]){
			$( 'ul.slide_products').animate({ 'margin-left' : '0'}, 1000);						
		}else if( index == [1]){
			$( 'ul.slide_products').animate({ 'margin-left' : '-610px'}, 1000);
		}else if( index == [2]){
			$( 'ul.slide_products').animate({ 'margin-left' : '-1220px'}, 1000);
		}else if( index == [3]){
			$( 'ul.slide_products').animate({ 'margin-left' : '-1830px'}, 1000);
		}else if( index == [5]){
			$( 'ul.slide_products').animate({ 'margin-left' : '-2440px'}, 1000);
		}else if( index == [6]){
			$( 'ul.slide_products').animate({ 'margin-left' : '-3050px'}, 1000);
		}else if( index == [7]){
			$( 'ul.slide_products').animate({ 'margin-left' : '-3660px'}, 1000);	
		}
	});	
	//Product Slideshow End
})