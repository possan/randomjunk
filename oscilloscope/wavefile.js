
var fs = require('fs');

exports.WaveFile = function( path, samplerate, channels ) {
	
	writeLong = function(stream, offset, int){
		var bytes = new Array(4);
   		bytes[0] = (int >> 0) & 255;
   		bytes[1] = (int >> 8) & 255;
   		bytes[2] = (int >> 16) & 255;
   		bytes[3] = (int >> 24) & 255;
   		new Buffer(bytes).copy( stream, targetStart=offset );
	};

	writeShort = function(stream, offset, int){
   		var bytes = new Array(2);
   		bytes[0] = (int) & 255;
   		bytes[1] = (int >> 8) & 255;
   		new Buffer(bytes).copy( stream, targetStart=offset );
	};

	var numsamples = 0;

	var fd = fs.openSync( path, "w" );

	writeHeader = function()
	{
		var header = new Buffer(44);
		
		var blockalign = channels * 16 / 8;
		var byterate = samplerate * blockalign;
		var datasize = (numsamples / channels) * blockalign;
		
		header.write( 'RIFF', 0 );
		writeLong( header, 4, datasize + 36 );
		header.write( 'WAVE', 8 );	
	
		header.write( 'fmt ', 12 );	
		writeLong( header, 16, 16 );
		writeShort( header, 20, 1 );
		writeShort( header, 22, channels );
		writeLong( header, 24, samplerate );
		writeLong( header, 28, byterate );
		writeShort( header, 32, blockalign );
		writeShort( header, 34, 16 );
	  	
		header.write( 'data', 36 );
		writeLong( header, 40, datasize );
		
		fs.writeSync( fd, header, 0, 44, 0 );
	}
	
	var dummyheader = new Buffer(44);	
	
	fs.writeSync( fd, dummyheader, 0, 44, 0 );
	
	return {
		
		write: function( sample ){
			var i = Math.round( 32767 * sample );
			if( i < 0 ) i = 65536 + i;
			var shortbuffer = new Buffer(2);
			shortbuffer[1] = (i >> 8) & 255;
			shortbuffer[0] = i & 255;
			fs.writeSync( fd, shortbuffer, 0, 2 );
			numsamples ++;
		},
	
		close: function( v ){
			writeHeader();
			fs.close( fd );
		}
		
	};
};

 