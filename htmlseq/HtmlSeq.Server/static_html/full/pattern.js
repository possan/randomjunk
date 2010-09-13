var g_AutomationChannels = [];
var lastkeydown = -1;
var starttime = -1;
var mousemode = '';
var lastblockdelta = 0;
var lastnoteelement = null;
var lastnoteblock = null;
var lastpatternid = '';

function getCurrentPatternID()
{
	var el2 = $('patterndropdown');
	var pat = el2.options[ el2.selectedIndex ].value;
	return pat;
}


function getCurrentInstrumentID()
{
	var el2 = $('instrumentdropdown');
	var pat = el2.options[ el2.selectedIndex ].value;
	return pat;
}





function onServerUpdate( data )
{
	// console.log( data );
}

function onPollData( r )
{
	var cmd = r.responseText.split('|');
	//	console.log( 'poll got: ', cmd );
	if( cmd.length > 0 )
	{
		if( cmd[0] == 'note-added' )
		{
			var nid = cmd[1];
			var pid = cmd[2];
			// console.log( 'note added (note id '+nid+', on pattern '+pid+')' );
			var pat = getCurrentPatternID();
			if( pat == pid )
				beginLoadPattern()
		}
		else if( cmd[0] == 'note-updated' )
		{
			var nid = cmd[1];
			var pid = cmd[2];
			// console.log( 'note changed B(note id '+nid+', on pattern '+pid+')' );
			var pat = getCurrentPatternID();
			if( pat == pid )
				beginLoadPattern()
		}
		else if( cmd[0] == 'note-deleted' )
		{
			var nid = cmd[1];
			var pid = cmd[2];
			// console.log( 'note removed (note id '+nid+', on pattern '+pid+')' );
			var pat = getCurrentPatternID();
			if( pat == pid )
				beginLoadPattern()
		}
		else if( cmd[0] == 'patternlist-changed' )
		{
			beginLoadPatternList();
		}
	}
	setTimeout( 'pollOnce()', 5000 );
}

function pollOnce()
{
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'poll': sid },
		onSuccess:onPollData } );
}

function beginPolling()
{
	setTimeout( 'pollOnce()', 5000 );
}












function renderInstrumentList()
{
	var el = $('instrumentdropdown');
	var oldins = '';
	if( el.selectedIndex != -1 )
		oldins = el.options[ el.selectedIndex ].value;
	var sel = 0;
	for( var j=0; j<g_Instruments.length; j++ )
	{	
		var item = g_Instruments[j];
		el.options[ el.options.length ] = new Option( item.name, item.id );	
		if( item.id == oldins )
			sel = j;
	}
	
	el.selectedIndex = sel;
}

function onGetInitialInstrumentList( r )
{
	var data = r.responseText.evalJSON(false);
	g_Instruments = data.instruments;	
	renderInstrumentList();
	beginLoadPatternList();
}

function renderPatternList()
{
	var el = $('patterndropdown');

	var oldsel = '';
	if( el.selectedIndex != -1 )
		oldsel = el.options[ el.selectedIndex ].value;

	el.options.length = 0;
	
	var sel = 0;
	for( var j=0; j<g_Patterns.length; j++ )
	{	
		var item = g_Patterns[j];
		el.options[ el.options.length ] = new Option( item.name, item.id );	
		if( item.id == oldsel )
			sel = j;
	}
	el.selectedIndex = sel;
	
	// var el1 = $('patterndropdown');
	var patname = el.options[ el.selectedIndex ].text;

	var el2 = $('patternname');
	el2.value = patname;
	
//	beginLoadPattern();
}

function onGetPatternList( r )
{
	// alert( 'poop' );
	var data = r.responseText.evalJSON(false);

	var el = $('patterndropdown');
	el.options.length = 0;
	
	var sel = 0;

	// alert( data );
	// alert( lastpatternid );
	
	for( var j=0; j<data.patterns.length; j++ )
	{	
		var item = data.patterns[j];
		el.options[ el.options.length ] = new Option( item.name, item.id );	
		if( item.id == lastpatternid )
			sel = j;
	}
	el.selectedIndex = sel;
	
	// var el1 = $('patterndropdown');
	var el2 = $('patternname');
	var pat = el2.options[ el2.selectedIndex ].text;
	el2.value = pat;
	
	beginLoadPattern();
}

/* function onGetAutomationChannels( r )
{
	var el = $('patterndropdown');
	el.options.length = 0;
	
	var data = r.responseText.evalJSON(false);
	g_AutomationChannels = data.channels;

	// beginLoadPattern();
	// beginLoadPatternList();
} function beginGetAutomationChannels()
{
	new Ajax.Request( '../c.aspx', {
		parameters:{'getautomationchannels':'1'},
		onSuccess:onGetAutomationChannels } );
} */

function beginGetInitialInstrumentList()
{
	new Ajax.Request( '../c.aspx', {
		parameters:{'getinstrumentlist':'1'},
		onSuccess:onGetInitialInstrumentList } );
}

function beginUpdatePatternList()
{
	var el = $('patterndropdown');
	var pat = el.options[ el.selectedIndex ].value;
	lastpatternid = pat;
	
	el = $('instrumentdropdown');
	var ins = el.options[ el.selectedIndex ].value;

	new Ajax.Request( '../c.aspx', {
		parameters:{'getpatternlist':ins},
		onSuccess:onGetPatternList } );
}

function blockMouseDown( evt, el, block )
{
	var el1 = $('notesplaceholder');
	var pp = Position.page( el1 );
	var px = Event.pointerX( evt ) - pp[0];
	var py = Event.pointerY( evt ) - pp[1];
	//	console.log( 'blockMouseDown', evt, el, block);
	//	Event.observe( el, 'mouseup', blockMouseUp.bindAsEventListener( this, block, el ), true );

	lastnoteelement = el;
	lastnoteblock = block;
	lastblockdelta = 0;
	
	var bleft = parseInt(lastnoteelement.style.left);
	var bright = parseInt(lastnoteelement.style.left) + parseInt(lastnoteelement.style.width);

	// console.log( "px="+px+", bleft="+bleft+", bright="+bright );
	if( px < bleft+10 )
	{
		mousemode = 'dragnotestart';
	}
	else if( px > bright-10 )
	{
		mousemode = 'dragnoteend';
	}
	else
	{
		mousemode = 'dragnote';
		lastblockdelta = px - bleft;
	}
	Event.stop( evt );
}







function noteMouseMove( evt )
{	
	var el1 = $('notesplaceholder');
	var pp = Position.page( el1 );
	var px = Event.pointerX( evt ) - pp[0];
	var py = Event.pointerY( evt ) - pp[1];
	var t1 = g_Viewport.XtoT( px - lastblockdelta );
	var nk = g_Viewport.YtoK( py );
	
	if( mousemode == 'keyroll' )
	{
		if( nk != lastkeydown )
		{
			var ins = getCurrentInstrumentID();
			
			if( lastkeydown != -1 )
			{
				// console.log( 'keyroll, note off: '+lastkeydown );
				// notify( 'keyroll,up,'+nk+',100' );
				notify( 'keyroll', { note:nk, instrument:ins, keystate:'up' } );
			}
			
			// console.log( 'keyroll, note on: '+nk );
			notify( 'keyroll', { note:nk, instrument:ins, keystate:'down' } );
			lastkeydown = nk;
		}
		Event.stop( evt );
	}
	else if( mousemode == 'addnote' )
	{
		// console.log( 'painting note, on key '+nk+' t0='+starttime+' t1='+t1 );
		var x1 = 100 + (starttime * 100.0);
		var x2 = 100 + (t1 * 100.0);
		var el2 = $('notemouse');
		Element.show( el2 );
		el2.style.left = (x1)+'px';	
		el2.style.top = (nk*20)+'px';
		el2.style.width = (x2-x1)+'px';
		Event.stop( evt );
	}
	else if( mousemode == 'dragnote' )
	{
		// console.log( 'moving note, on key '+nk+' t0='+starttime+' t1='+t1 );
		var d = lastnoteblock.to - lastnoteblock.from;
		t1 = g_Viewport.SnapT( t1 );
		var x1 = g_Viewport.TtoX( t1 );
		var x2 = g_Viewport.TtoX( t1+d );
		var y1 = g_Viewport.KtoY( nk );
		// console.log( x1, x2, y1 );
		lastnoteelement.style.left = (x1)+'px';
		lastnoteelement.style.width = (x2-x1)+'px';
		lastnoteelement.style.top = (y1)+'px';
		lastnoteblock.from = t1;
		lastnoteblock.to = t1 + d;
		lastnoteblock.note = nk;
		Event.stop( evt );
	}
	else if( mousemode == 'dragnotestart' )
	{
		// console.log( 'moving note, on key '+nk+' t0='+starttime+' t1='+t1 );
		t1 = g_Viewport.SnapT( t1 );
		var d = lastnoteblock.to - lastnoteblock.from;
		var x1 = g_Viewport.TtoX( t1 );
		var x2 = g_Viewport.TtoX( lastnoteblock.to );
		lastnoteelement.style.left = (x1)+'px';
		lastnoteelement.style.width = (x2-x1)+'px';
		lastnoteblock.from = t1;
		Event.stop( evt );
	}
	else if( mousemode == 'dragnoteend' )
	{
		// console.log( 'moving note, on key '+nk+' t0='+starttime+' t1='+t1 );
		var d = lastnoteblock.to - lastnoteblock.from;
		t1 = g_Viewport.SnapT( t1 );
		var x1 = parseInt( lastnoteelement.style.left );
		var x2 = g_Viewport.TtoX( t1 );
		lastnoteelement.style.width = (x2-x1)+'px';
		lastnoteblock.to = t1;
		Event.stop( evt );
	}
}





function noteMouseDown( evt )
{
	var el1 = $('notesplaceholder');
	var pp = Position.page( el1 );
	var px = Event.pointerX( evt ) - pp[0];
	var py = Event.pointerY( evt ) - pp[1];
	// console.log( 'noteMouseDown: '+px+', '+py );
	
	var t1 = g_Viewport.XtoT( px );
	var nk = g_Viewport.YtoK( py );
	
	if( px < 100 )
	{
		var ins = getCurrentInstrumentID();
	
		// keyroll
		mousemode = 'keyroll';
		// console.log( 'keyroll, note on: '+nk );
		notify( 'keyroll', { note:nk, instrument:ins, keystate:'down' } );
		lastkeydown = nk;
	}
	else
	{
		/*
		// kolla om vi klickar på en befintlig not.. isf är det typ 'dragnote', 'dragnotestart' eller 'dragnoteend'... 
		mousemode = 'addnote';
		starttime = t0;
		// console.log( 'beginning to add note #'+nk+' - from time: '+t0 );
		
		var x1 = 100 + (starttime * 100.0);
		var el2 = $('notemouse');
		Element.show( el2 );
		el2.style.left = (x1)+'px';	
		el2.style.top = (nk*20)+'px';
		el2.style.width = '20px'; 
		*/
	}
}










function noteMouseUp( evt )
{
	var el1 = $('notesplaceholder');
	var pp = Position.page( el1 );
	var px = Event.pointerX( evt ) - pp[0];
	var py = Event.pointerY( evt ) - pp[1];
	// console.log( 'noteMouseUp: '+px+', '+py );

	var t1 = g_Viewport.XtoT( px - lastblockdelta );
	var nk = g_Viewport.YtoK( py );
		
	if( mousemode == 'keyroll' )
	{
		if( lastkeydown != -1 )
		{
			if( px < 100 )
			{
				var ins = getCurrentInstrumentID();
		
				// console.log( 'keyroll, note off: '+lastkeydown );
				notify( 'keyroll', { note:lastkeydown, instrument:ins, keystate:'up' } );
			}
			lastkeydown = -1;
		}
	}
	else if( mousemode == 'addnote' )
	{
		var pat = getCurrentPatternID();

		t1 = g_Viewport.SnapT( t1 );
		// console.log( 'adding note on key '+nk+' - from time '+starttime+' to '+t1 );
		
		var not = { id:randomid('note'), from:starttime, to:t1, note:nk, velocity:100 };
		g_CurrentPattern.notes.push( not );
		
		notify( 'addnote', { id:not.id, pattern:pat, note:not.note, from:not.from, to:not.to, velocity:not.velocity } );
	
		renderPattern();
		//	var el2 = $('notemouse');
		//	Element.show( el2 );
	}
	else if( mousemode == 'dragnote' || mousemode == 'dragnotestart' || mousemode == 'dragnoteend' )
	{
		var pat = getCurrentPatternID();
	
		// t1 = g_Viewport.SnapT( t1 );
		// save and notify change
		// var d = lastnoteblock.to - lastnoteblock.from;
		// lastnoteblock.from = t1;
		// lastnoteblock.to = t1 + d;
		// lastnoteblock.note = nk;
		notify( 'movenote', { id:lastnoteblock.id, pattern:pat, note:lastnoteblock.note, from:lastnoteblock.from, to:lastnoteblock.to, velocity:100 } );
		// console.log( 'notify note moved.' );
	}
	
	mousemode = '';
	Event.stop( evt );
}








function noteDblClick( evt )
{
	var el1 = $('notesplaceholder');
	var pp = Position.page( el1 );
	var px = Event.pointerX( evt ) - pp[0];
	var py = Event.pointerY( evt ) - pp[1];
	var nt = g_Viewport.XtoT( px );
	var nk = g_Viewport.YtoK( py );

	// console.log( 'noteDblClick: '+px+','+py );
	// hitta vilken note vi dubbelklickat på
	var hit_idx = -1;
	var hit_id = '';
	for( var k=0; k<g_CurrentPattern.notes.length; k++ )
	{
		var n = g_CurrentPattern.notes[k];
		if( n.note == nk )
		{
			if( nt >= n.from && nt <= n.to )
			{
				hit_idx = k;
				hit_id = n.id;
			}
		}
	}
	
	var pat = getCurrentPatternID();
	
	// console.log( 'clicked on item #'+hit_idx+' ('+hit_id+')' );

	if( hit_idx == -1 )
	{
		nt = g_Viewport.SnapT( nt );
		var nt2 = nt+100;
		// console.log( 'adding note on key '+nk+' - from time '+nt+' to '+nt2 );
		
		var not = { id:randomid('note'), from:nt, to:nt2, note:nk, velocity:100 };
		g_CurrentPattern.notes.push( not );
		// console.log( 'notify note added' );
		
		notify( 'addnote', { pattern:pat, id:not.id, note:not.note, from:not.from, to:not.to, velocity:not.velocity } );
		// console.log( g_CurrentPattern.notes );
	}
	else
	{
		notify( 'deletenote', { id:hit_id, pattern:pat } );
				
		g_CurrentPattern.notes.splice( hit_idx, 1 );
		// console.log( 'notify note removed' );

	}

	renderPattern();
	
}












function onPatternCloned( r )
{
	beginUpdatePatternList();
}

function cloneThisPattern()
{
	var oldname = $('patternname').value;
	var p = prompt( 'What do you want to call your cloned pattern?', oldname );
	if( p )
	{		
		var nid = randomid( 'pat' );
		var sid = getCurrentSessionID();
		var pid = getCurrentPatternID();
		new Ajax.Request( '../c.aspx', {
			parameters:{ 'clonepattern': nid, 'session': sid, 'pattern': pid, 'name': p },
			onSuccess:onNewPatternCreated } );
	}
}

function onNewPatternCreated( r )
{
	beginLoadPatternList();
}

function createNewPattern()
{
	var oldname = '';
	var p = prompt( 'What do you want to call your new pattern?', oldname );
	if( p )
	{	
		var nid = randomid( 'pat' );
		var sid = getCurrentSessionID();
		new Ajax.Request( '../c.aspx', {
			parameters:{ 'createpattern': nid, 'session': sid, 'name': p },
			onSuccess:onNewPatternCreated } );
	}
}

function onPatternRenamed( r )
{
	beginUpdatePatternList();
}

function renamePattern(evt)
{
	var newname = $('patternname').value;
	var pid = getCurrentPatternID();
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'renamepattern': pid, 'session': sid, 'name': newname },
		onSuccess:onPatternRenamed } );

}


function changeInstrument(evt)
{
	var el = $('instrumentdropdown');
	var newins = el.options[ el.selectedIndex ].value;
	var pid = getCurrentPatternID();
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'changepatterninstrument': pid, 'session': sid, 'instrument': newins },
		onSuccess:onPatternRenamed } );
}



function changePattern(evt)
{
	var el1 = $('patterndropdown');
	var el2 = $('patternname');
	var pat = el1.options[ el1.selectedIndex ].text;
	el2.value = pat;
	// beginLoadPattern();
	updateCurrentPattern();
}







function changeZoom(evt)
{
	var el1 = $('zoom');
	g_Viewport.zoom = parseInt( el1.options[ el1.selectedIndex ].value );
	renderPattern();
	renderAutomation();
}

function changeDuration(evt)
{
	var el1 = $('duration');
	var dur = parseInt( el1.value );
	g_Viewport.duration = dur * 100;
	renderPattern();
	renderAutomation();
	
	var pid = getCurrentPatternID();
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'changepatternduration': pid, 'session': sid, 'duration': dur },
		onSuccess:onPatternRenamed } );
}

function onPatternData( r )
{
	var data = r.responseText.evalJSON(false);
	// console.log( data );
	g_CurrentPattern = data;
	
	g_Viewport.duration = data.duration*100;
	var el1 = $('duration');
	el1.value = ''+data.duration;

	renderPattern();
	renderAutomation();
	setStatus( '' );
}

function updateCurrentPattern()
{
	var pat = getCurrentPatternID();
	new Ajax.Request( '../c.aspx', {
		parameters:{'getpattern':pat},
		onSuccess:onPatternData } );
}

function removeAutomation()
{
	if( confirm( "Are you sure you want to remove this automation?" )==1 )
	{
	}
}

function renderPattern()
{
	var wpx = g_Viewport.TtoX( g_Viewport.duration );
	var bw = g_Viewport.BeatWidth();

	var el1 = $( 'notesplaceholder' );
	el1.innerHTML = '';
	{
		var divel = document.createElement( 'div' );
		divel.className = 'patterneditor-grid';
		divel.style.width = wpx+'px';
		el1.appendChild( divel );
		{
			var ulel = document.createElement( 'ul' );
			ulel.className = 'notelines bw'+bw;
			divel.appendChild( ulel );
			for( var n=127; n>=0; n-- )
			{
				var liel = document.createElement( 'li' );
				var divel2 = document.createElement( 'div' );
				var spanel2 = document.createElement( 'span' );
				var nam = keyName( n );
				if( nam.indexOf( '#' ) != -1 )
					liel.className = 'black';
				liel.appendChild( divel2 );
				divel2.appendChild( spanel2 );
				spanel2.appendChild( document.createTextNode( keyName( n ) ) );
				ulel.appendChild( liel );
			}
		}
		{
			var nl = g_CurrentPattern.notes;
			for( var tl=0; tl<nl.length; tl++ )
			{
				var note = g_CurrentPattern.notes[tl];
				
				// console.log( note );
				var divel2 = document.createElement( 'div' );

				divel2.className = 'b';

				var x0 = g_Viewport.TtoX( note.from );
				// console.log( x0 );
				var x1 = g_Viewport.TtoX( note.to );
				// console.log( x1 );
				var y0 = g_Viewport.KtoY( note.note );
				// console.log( y0 );

				divel2.style.left = x0+'px';
				divel2.style.width = (x1-x0)+'px';
				divel2.style.top = y0+'px';
				divel2.style.backgroundColor = '#f00';
				divel2.style.zIndex = 99;
				divel.appendChild( divel2 );
				
				Event.observe( divel2, 'mousedown', blockMouseDown.bindAsEventListener( this, divel2, note ) );
				
				var divel3 = document.createElement( 'div' );
				divel2.appendChild( divel3 );
				
				var spanel2 = document.createElement( 'span' );
				divel3.appendChild( spanel2 );
				
				spanel2.appendChild( document.createTextNode( '01' ) );
			}
		}
		{
			var divel2 = document.createElement( 'div' );
			divel2.className = 'p';
			divel2.style.left = (340)+'px';
			divel.appendChild( divel2 );
		}
		{
			var divel2 = document.createElement( 'div' );
			divel2.id = 'notemouse';
			divel.appendChild( divel2 );
		}
	}
}	

function renderAutomation()
{
	var wpx = g_Viewport.TtoX( g_Viewport.duration );
	var bw = g_Viewport.BeatWidth();

	var el2 = $('automationplaceholder' );
	el2.innerHTML = '';
	{
		var divel = document.createElement( 'div' );
		divel.className = 'patterneditor-grid';
		divel.style.width = wpx+'px';
		el2.appendChild( divel );
		{
		
			var ulel = document.createElement( 'ul' );
			ulel.className = 'automationlines bw'+bw;
			divel.appendChild( ulel );
		
			var liel = document.createElement( 'li' );
			ulel.appendChild( liel );
				
			var divhead = document.createElement( 'div' );
			liel.appendChild( divhead );
			divhead.className = 'head';
			{
				var pel = document.createElement( 'p' );
				divhead.appendChild( pel );
				
				pel.appendChild( document.createTextNode( 'Channel: ' ) );

				var selel = document.createElement( 'select' );
				pel.appendChild( selel );
				
				for( var j=0; j<g_AutomationChannels.length; j++ )
				{
					var item = g_AutomationChannels[j];
					selel.options[ selel.options.length ] = new Option( item.name, item.id );
				}
			}
			{
				var pel = document.createElement( 'p' );
				divhead.appendChild( pel );

				var ael = document.createElement( 'a' );
				Event.observe( ael, 'click', this.removeAutomation.bind(0) );
				pel.appendChild( ael );
				
				ael.appendChild( document.createTextNode( 'Remove automation' ) );
			}
			var divtrack = document.createElement( 'div' );
			liel.appendChild( divtrack );
			divtrack.className = 'track';
			{
				for( var k=0; k<10; k++ )
				{
					var pointel = document.createElement( 'div' );
					pointel.className = 'pt';
					pointel.style.left = (20 + (50*k))+'px';
					pointel.style.top = (20 + Math.round(Math.random() * 140))+'px';
					divtrack.appendChild( pointel );
				}
			}

			for( var k=0; k<180; k++ )
			{
				var pointel = document.createElement( 'div' );
				pointel.className = 'g';
				pointel.style.left = (0 + (5*k))+'px';
				pointel.style.height = (100 + Math.round(80 * Math.sin( k / 15.0 )))+'px';
				divtrack.appendChild( pointel );
			}

			for( var k=0; k<10; k++ )
			{
				var pointel = document.createElement( 'div' );
				pointel.className = 'l';
				pointel.style.left = (0 + (100*k))+'px';
				divtrack.appendChild( pointel );
			}

			{
				var pointel = document.createElement( 'div' );
				pointel.className = 'p';
				pointel.style.left = (220)+'px';
				divtrack.appendChild( pointel );
			}
		}
	}
}

var g_CurrentPattern = 
{
	notes: [],
	automations: []
}

var g_Viewport = null;







function initPatternView()
{
	g_Viewport = new Seq.Viewport();
	
	initPageHeader('PAT');

	setStatus( 'Initializing view...' );
	// beginGetAutomationChannels();
	// beginGetInitialInstrumentList();
	// beginLoadPatternList();
	renderPatternList();
	renderInstrumentList();
	updateCurrentPattern();
	
	{
		var el = $('zoom');
		var zooms = [ 10, 20, 50, 100, 200, 400 ];
		el.options.length = 0;
		for( var k=0; k<zooms.length; k++ )
		{
			var z = zooms[k];
			el.options[ el.options.length ] = new Option( z.toString()+"%", z.toString() );
		} 
		el.selectedIndex = zooms.indexOf( 100 );
	}

	{
		var el = $('duration');
		el.value = '16';
	}
	
	beginPolling();
	
	var el1 = $('notesplaceholder');
	Event.observe( el1, 'mousemove', noteMouseMove.bindAsEventListener( this ), true );
	Event.observe( el1, 'mousedown', noteMouseDown.bindAsEventListener( this ) );
	Event.observe( el1, 'dblclick', noteDblClick.bindAsEventListener( this ) );
	Event.observe( el1, 'mouseup', noteMouseUp.bindAsEventListener( this ) );
}





