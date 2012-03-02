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
//= require jquery_ujs
//= require_tree .

//Home
// variavel de controle do slide da home
var slide_home_index = 0;
// variavel que controla o intervalo no slide_ index
var ctrl_interval;

$( document ).ready( function(){

   // display none em todos os elementos menos o primeiro
   $('.home figure ul.slide_container li:not(:first)').hide();
   
   // função q determina o tempo que cada imagem fica na tela
   ctrl_interval = setInterval( "slide();", 5000);

   $( '#slide_index li a' ).click( function(e) { 
		e.preventDefault();   		
		var this_index = $( this ).parent().index();
		$('#slide_index li').removeClass( 'active' );
		$( this ).parent().addClass( 'active' );
		$( 'figure .slide_container li' ).fadeOut();
		$( 'figure .slide_container li').eq( this_index ).show();
		clearInterval( ctrl_interval );
		ctrl_interval = setInterval( "slide();", 5000);
   }); 
   //Home Slide End

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

//Accessories
	
	$( 'section.accessories aside ul li').click( function(e){
		e.preventDefault();
		$( 'section.accessories aside ul li').removeClass( 'active' );
		$( this ).addClass( 'active' );
		var accesor = $( this ).index();
		if( accesor == [0]){
			$('section#trasicao, ').fadeOut(1000, function(){
				$( 'section#rodape').fadeOut( function(){
					$('section#redutor').fadeIn(1000);
				})
				
			});
		}else if( accesor == [1]){
			$('section#rodape').fadeOut(1000, function(){
				$( 'section#redutor' ).fadeOut( function(){
					$('section#trasicao').fadeIn(1000);
				})
				
			});
		}else if( accesor == [2]){
			$('section#trasicao').fadeOut(1000, function(){
				$( 'section#redutor' ).fadeOut( function(){
					$('section#rodape').fadeIn(1000);
				})
			});
		}	
	})
	//Accessories End
});

function slide(){

  // esconde o elemento que esta visivel
  $('figure .slide_container li').eq( slide_home_index  ).fadeOut();
  $('#slide_index li').eq( slide_home_index ).removeClass( 'active' );

  // variavel de controle recebe + 1 no seu valor atual
  slide_home_index  += 1;

  /**
   * verifica se o slide chegou ao final
   * comparando com a quantidade de elementos,
   * se for verdadeiro, retorna o slide para o
   * inicio zerando o index
   */
  if ( slide_home_index  == $('figure .slide_container li').length)
    slide_home_index = 0;

  // mostra a proxima imagem
  $('figure .slide_container li').eq( slide_home_index  ).fadeIn();
  $('figure li').eq( slide_home_index ).addClass( 'active' );
}

// End --------------------

//