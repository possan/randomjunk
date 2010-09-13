
function onPollData( r )
{
	var cmd = r.responseText.split('|');
	//	console.log( 'poll got: ', cmd );
	if( cmd.length > 0 )
	{
		if( cmd[0] == 'tracklist-changed' )
			beginReloadTracks();

		else if( cmd[0] == 'patternlist-changed' )
			beginReloadPatterns();
	}
	setTimeout( 'pollOnce()', 1000 );
}

function pollOnce()
{
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'poll': sid },
		// method:'get',
		onSuccess:onPollData } );
}

function beginPolling()
{
	setTimeout( 'pollOnce()', 1000 );
}

function onPostUpdate( r )
{
	setTimeout( 'beginReloadTracks()', 200 );
}

function onVolumeMouseDown( evt, parent, trackid )
{
	console.log( 'volume clicked on track '+trackid );
	
	var trackel = parent.select( '.volume .track' );
	console.log( trackel );
	
	var pt2 = Element.cumulativeOffset( trackel );
	console.log( pt2 );
	
	var pt = Element.viewportOffset( parent );
	console.log( pt );
	
	var ex = Event.pointerX( evt ) - pt[0];
	var ey = Event.pointerY( evt ) - pt[1] - 40;
	console.log( 'mouse='+ex+','+ey);
	
	var newvol = 100 - ey;
	if( newvol < 0 ) newvol = 0;
	if( newvol > 100 ) newvol = 100;
	console.log( 'new volume: '+newvol );

	for( var j=0; j<g_Tracks.length; j++ )
	{
		var trk = g_Tracks[j];
		if( trk.id == trackid )
		{
			trk.volume = newvol;
		}
	}
	
	renderTracks();
	
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'changetrackvolume':trackid, 'volume':newvol, 'session':sid },
		onSuccess:onPostUpdate } );

}
 

function onMuteClicked( evt, parent, trackid )
{
	var newstate = 0;
	console.log( 'mute toggled on track '+trackid );
	for( var j=0; j<g_Tracks.length; j++ )
	{
		var trk = g_Tracks[j];
		if( trk.id == trackid )
		{
			trk.mute = 1 - trk.mute;
			newstate = trk.mute;
		}
	}
	
	renderTracks();

	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'mutetrack':trackid, 'mute':newstate, 'session':sid },
		onSuccess:onPostUpdate } );
}

function onSoloClicked( evt, parent, trackid )
{
	var newstate = 0;
	console.log( 'solo toggled on track '+trackid );
	for( var j=0; j<g_Tracks.length; j++ )
	{
		var trk = g_Tracks[j];
		if( trk.id == trackid )
		{
			trk.solo = 1 - trk.solo;
			newstate = trk.solo;
		}
	}
	
	renderTracks();
	
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'solotrack':trackid, 'solo':newstate, 'session':sid },
		onSuccess:onPostUpdate } );
}

function onTransposeClicked( evt, parent, trackid, delta )
{
	var newtranspose = 0;
	console.log( 'transpose '+delta+' clicked on track '+trackid );
	for( var j=0; j<g_Tracks.length; j++ )
	{
		var trk = g_Tracks[j];
		if( trk.id == trackid )
		{
			trk.transpose += delta;
			newtranspose = trk.transpose;
		}
	}

	renderTracks();

	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'transposetrack':trackid, 'transpose':newtranspose, 'session':sid },
		onSuccess:onPostUpdate } );
}

function updateTrackElement( parent, data )
{
	parent.innerHTML = '';
	
	var rootel = Builder.node('div', { className: 'inner' } );
	parent.appendChild( rootel );

	var title_el = Builder.node('div', { className: 'title' });
	rootel.appendChild( title_el );
	{
		var title_input = Builder.node('input', { type: 'text', value: data.name } );
		title_el.appendChild( title_input );
	}

	var volume_el = Builder.node('div', { className: 'volume' });
	rootel.appendChild( volume_el );
	{
		var volumetrack_el = Builder.node( 'div', { className: 'track' } );
		var volumetrackmarker_el = Builder.node('div', { className: 'trackmarker' } );
	
		
		volumetrackmarker_el.style.top = (100-data.volume)+'px';
		volumetrackmarker_el.style.height = data.volume+'px';
		
		Event.observe( volumetrack_el, 'mousedown', onVolumeMouseDown.bindAsEventListener( null, parent, data.id ) );
		Event.observe( volumetrackmarker_el, 'mousedown', onVolumeMouseDown.bindAsEventListener( null, parent, data.id ) );
		
		volume_el.appendChild( volumetrack_el );
		volume_el.appendChild( volumetrackmarker_el );
	}

	var flags_el = Builder.node('div', { className: 'flags' });
	rootel.appendChild( flags_el );
	{
		var muteclass = (data.mute==1)?'selectedwidebutton':'widebutton';
		var mute_el = Builder.node('div', { className: muteclass }, [ Builder.node( 'a', {}, [ 'mute' ] ) ] );
		Event.observe( mute_el, 'click', onMuteClicked.bindAsEventListener( null, parent, data.id ) );
		flags_el.appendChild( mute_el );

		var soloclass = (data.solo==1)?'selectedwidebutton':'widebutton';
		var solo_el = Builder.node('div', { className: soloclass }, [ Builder.node( 'a', {}, [ 'solo' ] ) ] );
		Event.observe( solo_el, 'click', onSoloClicked.bindAsEventListener( null, parent, data.id ) );
		flags_el.appendChild( solo_el );
	}
	
	var transpose_el = Builder.node('div', { className: 'transpose' });
	rootel.appendChild( transpose_el );
	{
		var but1_el = Builder.node('div', { className: 'narrowbutton' }, [ Builder.node( 'a', {}, [ '-12' ] ) ] );
		var but2_el = Builder.node('div', { className: 'narrowbutton' }, [ Builder.node( 'a', {}, [ '-1' ] ) ] );
		var text_el = Builder.node('div', { className: 'transposevalue' }, [ data.transpose.toString() ] );
		var but3_el = Builder.node('div', { className: 'narrowbutton' }, [ Builder.node( 'a', {}, [ '+1' ] ) ] );
		var but4_el = Builder.node('div', { className: 'narrowbutton' }, [ Builder.node( 'a', {}, [ '+12' ] ) ] );

		Event.observe( but1_el, 'click', onTransposeClicked.bindAsEventListener( null, parent, data.id, -12 ) );
		Event.observe( but2_el, 'click', onTransposeClicked.bindAsEventListener( null, parent, data.id, -1 ) );
		Event.observe( but3_el, 'click', onTransposeClicked.bindAsEventListener( null, parent, data.id, 1 ) );
		Event.observe( but4_el, 'click', onTransposeClicked.bindAsEventListener( null, parent, data.id, 12 ) );

		transpose_el.appendChild( but1_el );
		transpose_el.appendChild( but2_el );
		transpose_el.appendChild( text_el );
		transpose_el.appendChild( but3_el );
		transpose_el.appendChild( but4_el );
	}
	
	var lab1 = '-';
	if( data.pattern != '' ) lab1 = data.pattern;	
	rootel.appendChild( Builder.node( 'div', { className: 'playing' }, [
		'playing:',
		Builder.node( 'br' ),
		Builder.node( 'a', {}, [ lab1 ] )
		] ) );

	var lab2 = '-';
	if( data.cued != '' ) lab2 = data.cued;
	rootel.appendChild( Builder.node('div', { className: 'title' }, [
		'cued:',
		Builder.node( 'br' ),
		Builder.node( 'a', [ lab2 ] ) 
		] ) );
		
	var select_el = document.createElement( 'select' );
	select_el.options.length = 0;
	select_el.options[ select_el.options.length ] = new Option( '- select -', '*cancel' );	
	select_el.options[ select_el.options.length ] = new Option( '- none -', '' );	
	Event.observe( select_el, 'change', onCueSelect.bindAsEventListener( select_el, data ) );
	for( var j=0; j<g_Patterns.length; j++ )
	{
		select_el.options[ select_el.options.length ] = new Option( g_Patterns[j].name, g_Patterns[j].id );	
	}
		
	rootel.appendChild( Builder.node('div', { className: 'cue' }, [	
		'cue:',
		Builder.node( 'br' ),
		select_el
		] ) );
}

function onCuedPattern( r )
{
	setTimeout( 'beginReloadTracks()', 200 );
}

function onCueSelect( evt, trkdata )
{
	// var el = evt.relatedElement;
	var select_el = this;
	
	var pat = select_el.options[ select_el.selectedIndex ].value;
	select_el.selectedIndex = 0;
	
	if( pat != '*cancel' )
	{	
		var trk = trkdata.id;
		trkdata.cued = pat;
		renderTracks();

		var sid = getCurrentSessionID();
		new Ajax.Request( '../c.aspx', {
			parameters:{ 'cuepattern': sid, 'pattern':pat, 'track':trk },
			onSuccess:onCuedPattern } );
	}
}


var g_Tracks = [];
var g_Patterns = [];


function renderTracks()
{
	var el = $('jamtracks');
	el.innerHTML = '';
	for( var j=0; j<g_Tracks.length; j++ )
	{
		var p2 = document.createElement( 'div' );
		p2.className = 'track';
		updateTrackElement( p2, g_Tracks[j] );
		g_Tracks[j].element = p2;
		el.appendChild( p2 );
	}
	var p2 = document.createElement( 'div' );
	p2.className = 'last';
	el.appendChild( p2 );
}

function onReloadPatterns( r )
{
	var data = r.responseText.evalJSON( false );
	g_Patterns = data.patterns;
	renderTracks();
}

function onReloadTracks( r )
{
	var data = r.responseText.evalJSON( false );
	g_Tracks = data.tracks;
	renderTracks();
}

function beginReloadPatterns()
{	
	// alert( 'beginReloadPatterns()' );
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'getpatternlist': sid },
		onSuccess:onReloadPatterns } );
}

function beginReloadTracks()
{	
	// alert( 'beginReloadTracks()' );
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'gettracklist': sid },
		onSuccess:onReloadTracks } );
}

function onCreateTrack(r)
{
	beginReloadTracks();
}

function createNewTrack()
{
	var p = prompt( 'Name of new track' );
	if( p )
	{
		var newid = randomid('trk');
		var sid = getCurrentSessionID();
		new Ajax.Request( '../c.aspx', {
			parameters:{ 'createtrack': newid, 'session':sid, 'name':p },
			onSuccess:onCreateTrack } );
	}
}

function initJamView()
{
	$('jamtracks').innerHTML = 'Loading...';
	initPageHeader('JAM');
	//	beginReloadTracks();
	beginReloadPatterns();
	beginPolling();
	renderTracks();
}
