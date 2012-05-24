//Home
// variavel de controle do slide da home
var slide_home_index = 0;
// variavel que controla o intervalo no slide_ index
var ctrl_interval;

$(document).ready(function(){
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
})

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