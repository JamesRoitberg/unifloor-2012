$(document).ready(function(){
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
})