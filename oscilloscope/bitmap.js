var WaveFile = require('./wavefile').WaveFile;
var Canvas = require( 'canvas' );
var fs = require( 'fs' );





function writeWave( imgData ) {

	var width = imgData.width;
	var height = imgData.height;
 	var pixels = imgData.data;

	var samplerate = 48000;
	var f = new WaveFile( "bitmap.wav", samplerate, 2 );
	// var radiansmult = Math.PI / (samplerate / 2.0);
	
	var fr = 0;
	var bx = 10;
	var by = 22;

	var writefxy = function( fx, fy, bt ) {
		if( typeof(bt) == 'undefined' )
			bt = 1;
		for( var j=0; j<bt; j++ ) {		
			f.write( fx );
			f.write( fy );
		}	
	}
	
	var writexy = function( x, y, bt ) {
		var fx = x/18.0 - 0.5;
		var fy = y/18.0 - 0.5;
		
		var n = 1 + 7*bt;
		var d = Math.PI / (n/2.0)
		
		var r = 1/200 + (1/30.0 * (1-bt));
		for( var j=0; j<n; j++ ) {
			var a = j * d + fr / 6.0;
			f.write( fx + r*Math.cos(a) );
			f.write( fy + r*Math.sin(a) );
		}
		// writefxy( fx, fy, bt );
	}
	
	var writedelay = function( bt ) {
		writefxy( -1.0, -1.0, bt );
	}
	
	var getshade = function( x, y ) {
		var cc = pixels[ 4 * (y * width + x) + 2 ];
		return (cc & 255) / 255.0;
	}
	
	var copypixel = function( x, y ) {
		var s = getshade( bx + x, by + y );
		if( s < 0.05 )
			return;
		writexy( x, y, s );
	//	writedelay( 10 - s * 10 );
	}
	
	for( var y=0; y<16; y++ ){
		var s = '';
		for( var x=0; x<16; x++ ){
			var p = Math.round( getshade( bx+x, by+y ) * 9 );
			s += p+' ';
		}
		console.log( s );	
	}

	for( fr=0; fr<600; fr++ ) {

		 if( fr % 10 == 0 )
			console.log('dumping frame '+fr);
			
		if( fr % 2 == 0 ) {
			for( var y=0; y<=14; y+=2 ){
				for( var x=0; x<=15; x++ ) copypixel( x, y );
				for( var x=15; x>=0; x-- ) copypixel( x, y+1 );
			}
		}
		else {
			for( var y=14; y>=0; y-=2 ) {
				for( var x=15; x>=0; x-- ) copypixel( x, y+1 );
				for( var x=0; x<=15; x++ ) copypixel( x, y );
			}
		}

	}
	f.close();
}

function loadImage( filename, callback ) { 
	console.log( 'load image', filename );
	var canvas = new Canvas( 100, 100 );
	var ctx = canvas.getContext( '2d' );
	var file = fs.readFileSync( __dirname + '/' + filename );
	var img = new Canvas.Image();
	img.onerror = function(err){
	  throw err;
	};
	img.onload = function() {
		console.log( 'got image', img );
	  	ctx.drawImage( img, 0, 0 );
		var imgData = ctx.getImageData(0, 0, 100, 100);
	//	console.log( imgData );
	//	console.log( data );
		callback( imgData );
	};
	img.src = __dirname + '/' + filename;
	// console.log( file );
};

loadImage( 'smb_spritesheet.png', writeWave );




