var WaveFile = require('./wavefile').WaveFile;

var samplerate = 48000;

var p = 0;
var c = 0;
var r = 0.5;
var r2 = 0.5;











var f = new WaveFile( "square.wav", samplerate, 2 );
var radiansmult = Math.PI / (samplerate / 2.0);
for( var s=0; s<10; s++ ) {
	console.log("write second "+s);
	for( var j=0; j<samplerate; j++ ){
		var j20 = j % 50;
		if( j20 < 20 ){
			if( j20 == 0 ){
				c ++;
				c %= 8;
			}
			if( c == 0 ) { f.write( -r ); f.write( -r ); }
			if( c == 1 ) { f.write( 0 ); f.write( -r ); }
			if( c == 2 ) { f.write( r ); f.write( -r ); }
			if( c == 3 ) { f.write( r ); f.write( 0 ); }
			if( c == 4 ) { f.write( r ); f.write( r ); }
			if( c == 5 ) { f.write( 0 ); f.write( r ); }
			if( c == 6 ) { f.write( -r ); f.write( r ); }
			if( c == 7 ) { f.write( -r ); f.write( 0 ); }
		
		}
		else {
			var rx = Math.sin( p * 33 * radiansmult );
			var ry = Math.cos( p * 32 * radiansmult );
			f.write( r * rx );
			f.write( r * ry );
		}
		
		p ++;
	}
}
f.close();
