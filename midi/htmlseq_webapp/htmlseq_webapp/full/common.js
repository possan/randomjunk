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
		this.quant = 1;
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