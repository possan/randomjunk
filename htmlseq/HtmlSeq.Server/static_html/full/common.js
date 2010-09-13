var Seq = {};

Seq.Viewport = Class.create(); 
Seq.Viewport.prototype = Object.extend( Seq.Viewport.prototype, {

	initialize: function()
	{
		this.headersize = 100;
		this.beatwidth = 80;
		this.multiplier = 100;
		this.zoom = 100;
		this.duration = 4*4*100;
		this.quant = 4;
		this.tempo = 140;
		this.quantsnap = 1;
		this.numerator = 4;
		this.denominator = 4;
	},

	BeatWidth: function()
	{
		return this.TtoX( this.multiplier*2 ) - this.TtoX( this.multiplier*1 );
	},
	
	SnapT: function( t )
	{
		t /= this.multiplier;
		t *= this.quant;
		t = Math.floor( t );
		t /= this.quant;
		t *= this.multiplier;
		return t;
	},
		
	XtoT: function( x )
	{
		x -= this.headersize;
		x /= this.beatwidth;
		x *= this.multiplier;
		x /= this.zoom / 100;
		if( x < 0 ) x = 0;
		if( x > this.duration ) x = this.duration;
		return x;
	},
	
	TtoX: function( t )
	{
		if( t < 0 ) t = 0;
		if( t > this.duration ) t = this.duration;		
		t /= (100 / this.zoom);
		t /= this.multiplier;
		t *= this.beatwidth;
		t += this.headersize;
		return t;
	},
	
	YtoK: function( y )
	{
		y /= 20;
		y = Math.floor( y );
		y = 127 - y;
		return y;
	},
	
	KtoY: function( k )
	{
		k = 127 - k;
		k = Math.floor( k ) * 20;
		return k;
	},

	YtoV: function( y )
	{
		y = 200 - y;
		v = 128 * v / 200;
		return y;
	},
	
	VtoY: function( v )
	{
		v = 200 * v / 128;
		v = 200 - v;
		return v;
	}	

} );









function keyName( n )
{
	var oN = Math.floor(n/12);
	var oK = n%12;
	var nB = [ 'C-', 'C#', 'D-', 'D#', 'E-', 'F-', 'F#', 'G-', 'G#', 'A-', 'A#', 'B-' ];
	return nB[oK]+oN; 
}

var randomprefix = '';
var randomindex = 0;

function randomid( prefix )
{
	if( randomprefix == '' )
	{
		randomprefix = '';
		for( var k=0; k<6; k++ )
			randomprefix += Math.round(Math.random()*9).toString();
	}	
	var id = prefix+ randomprefix;
	for( var k=0; k<6; k++ )
		id += Math.round(Math.random()*9).toString();
	id += randomindex.toString();
	randomindex ++;
	return id;
}

function getCurrentSessionID()
{
	var id = '';
	var a = location.hash;
	var m = /SESSION=([a-z0-9]+)/.exec( a );
	if( m )
		if( m.length > 1 )
			id = m[1];
	return id;
}

function fixsessionlink( link )
{
	var sid = getCurrentSessionID();
	link.href = link.href + "#SESSION="+sid;
}

function initPageHeader( selectedtab )
{	
	var sid = getCurrentSessionID();
	
	var tabs =
	[	
		{
			file: 'jam.htm', 
			title: 'JAM'
		},
		{ 
			file: 'song.htm',
			title: 'SNG'
		},
		{
			file: 'pattern.htm',
			title: 'PAT'
		},
		{
			file: 'instruments.htm',
			title: 'INS'
		},
		{
			file: 'settings.htm',
			title: 'SET'
		}
	];

	var ht = '';
	ht += '<div class="logo"></div>\n';
	ht += '<div class="status">\n';
	ht += '<div class="clock">\n';
	ht += '1:2:3:4\n';
	ht += '</div>\n';
	ht += '<div class="loopinfo">\n';
	ht += 'LOOP-ON<br />\n';
	ht += '3:3:1<br />\n';
	ht += '3:3:3<br />\n';
	ht += '</div>\n';
	ht += '<div class="playstate">\n';
	ht += 'zzz\n';
	ht += '</div>\n';
	ht += '<div class="buttons">\n';
	ht += '<a href="#">RWD</a> | <a href="#">PLAY</a> | <a href="#">STOP</a> | <a href="#">FWD</a>\n';
	ht += '</div>\n';
	ht += '</div>\n';
	ht += '<div class="tabs">\n';
	ht += '<ul>\n';
	
	for( var j=0; j<tabs.length; j++ )
	{
		var tab = tabs[j];
		if( tab.title == selectedtab )
			ht += '<li class="selected">';
		else
			ht += '<li>';
		ht += '<a href="'+tab.file+'#SESSION='+sid+'"><span>'+tab.title+'</span></a>';
		ht += '</li>\n';
	}
	ht += '<li class="last"></li>\n';
	ht += '</ul>\n';
	ht += '</div>\n';
	
	$('headerblock').innerHTML = ht;

}


function setStatus( txt )
{
	$('statustext').innerHTML = txt;
	window.status = txt;
}





function onNotifyData( r )
{
	setStatus( '' );
}

function notify( msg, extra )
{
	var sid = getCurrentSessionID();
	setStatus( 'Sending changes..' );
	var p = { 'notify': msg, 'session': sid };
	p = Object.extend( p, extra );
	new Ajax.Request( '../c.aspx', {
		parameters:p, 
		onSuccess:onNotifyData } );
}








