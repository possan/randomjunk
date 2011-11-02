var WaveFile = require('./wavefile').WaveFile;
var samplerate = 48000;

var p = 0;
var c = 0;
var r = 0.5;
var r2 = 0.5;

var points = [
	[-1,-1,-1], [1,-1,-1], [-1,1,-1], [1,1,-1],
	[-1,-1,1], [1,-1,1], [-1,1,1], [1,1,1]
];

var rx = 0;
var ry = 0;
var rz = 0;

var newpoints = [ [0,0], [0,0], [0,0], [0,0], [0,0], [0,0], [0,0], [0,0] ];

var lines = [
	// [0,0],
	
	[0,1],
	[1,3],
	[3,2],
	[2,0],
	[0,4],
	
	// [4,4],
	
	[4,6],
	[6,2],
	[2,6],
	[6,7],
	[7,3],
	[3,7],
	[7,5],
	[5,1],
	[1,5],
	[5,4],
	[4,0],
];







var f = new WaveFile( "cube.wav", samplerate, 2 );

var writefxy = function( fx, fy, bt ) {
	if( typeof(bt) == 'undefined' )
		bt = 1;
	for( var j=0; j<bt; j++ ) {		
		f.write( fx );
		f.write( fy );
	}	
}

var rotate2d = function( tx,ty, a ) {
	var c = Math.cos(a);
	var s = Math.sin(a);
	return [
		tx * s + ty * c,
		tx * c - ty * s,
	];
}

var line2 = function(l0,l1) {
	var x0 = newpoints[l0][0];
	var y0 = newpoints[l0][1];
	var x1 = newpoints[l1][0];
	var y1 = newpoints[l1][1];
	var steps = 9;
	var dx = (x1 - x0) / steps;
	var dy = (y1 - y0) / steps;
	for( var p=0; p<=steps; p++ ) {
		writefxy( x0, y0 );
		x0 += dx;
		y0 += dy;
	}
}

var nfr = 35000/lines.length;

for( var fr=0; fr<nfr; fr++ ) {
	
	console.log('write frame '+fr+'/'+nfr );

	for( var p=0; p<points.length; p++ ) {
		
		var tx = points[p][0];
		var ty = points[p][1];
		var tz = points[p][2];
		
		var r0 = rotate2d( tx, ty, rz );
		tx = r0[0]; ty = r0[1];
		
		r0 = rotate2d( ty, tz, rx );
		ty = r0[0]; tz = r0[1];

		r0 = rotate2d( tx, tz, ry ); 
		tx = r0[0]; tz = r0[1];
		
		var d = (10.0 + tz) / 5.0;
		newpoints[p][0] = tx * 1.0 / d;
		newpoints[p][1] = ty * 1.0 / d;		
	}
	
	for( var l=0; l<lines.length; l++ ) {
		line2( lines[l][0], lines[l][1] );
	}
	
	
	
	rx += 0.0030;
	ry += 0.0058;
	rz += 0.0024;
	
}


f.close();
