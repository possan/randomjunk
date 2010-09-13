


function onPollData( r )
{
	var cmd = r.responseText.split('|');
	// console.log( 'poll got: ', cmd );
	if( cmd.length > 0 )
	{
		if( cmd[0] == 'instrument-created' ||
			cmd[0] == 'instrument-updated' ||
			cmd[0] == 'instrument-deleted' )
		{
			updateInstrumentsList();
		}
	}
	setTimeout( 'pollOnce()', 1000 );
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
	setTimeout( 'pollOnce()', 1000 );
}


function createNewInstrument()
{
	var p = prompt( 'Please provide a name for your new instrument', '' );
	if( p && p != '' )
	{
		var ins = randomid('ins');
		var sid = getCurrentSessionID();
		new Ajax.Request( '../c.aspx?', {
			parameters: { 
				'createinstrument': ins,
				'session': sid,
				'name': p
			},
			onSuccess:onUpdatedInstrument } );
	}
}

function removeCurrentInstrument()
{
	if( confirm( 'Are you sure you want to delete this instrument?' ) == 1 )
	{
		var ins = getCurrentInstrumentID();
		var sid = getCurrentSessionID();
		new Ajax.Request( '../c.aspx?', {
			parameters: { 
				'deleteinstrument': ins,
				'session': sid
			},
			onSuccess:onUpdatedInstrument } );
	}
}

function onInstrumentList( r )
{
	var el = $('instrumentdropdown');
	el.options.length = 0;
	
	var data = r.responseText.evalJSON(false);
	for( var j=0; j<data.instruments.length; j++ )
	{	
		var item = data.instruments[j];
		el.options[ el.options.length ] = new Option( item.name, item.id );	
	}
	
	el.selectedIndex = 0;
	
	beginLoadInstrument();
}

function onDeviceList( r )
{
	var data = r.responseText.evalJSON(false);
	g_DeviceList = data.devices;


	var el = $('devicelist');
	el.options.length = 0;
	for( var j=0; j<g_DeviceList.length; j++ )
	{
		el.options[ el.options.length ] = new Option( g_DeviceList[j].name, g_DeviceList[j].id );
	}
}

function updateDeviceList()
{	
	new Ajax.Request( '../c.aspx?', {
		parameters: { 'getmididevicelist':'1' },
		onSuccess:onDeviceList
	} );
}

function updateInstrumentsList()
{
	new Ajax.Request( '../c.aspx?', {
		parameters: { 'getinstrumentlist':'1' },
		onSuccess:onInstrumentList
	} );
}

function getCurrentInstrumentID()
{
	var el2 = $('instrumentdropdown');
	var pat = el2.options[ el2.selectedIndex ].value;
	return pat;
}


function changeInstrument( event )
{
	beginLoadInstrument();
}

var g_CurrentInstrument = null;

function onInstrumentData( r )
{
	var data = r.responseText.evalJSON(false);
	console.log( data );
	
	g_CurrentInstrument = data;
	
	$('insname').value = g_CurrentInstrument.name;
	$('instype').value = g_CurrentInstrument.type;
	$('inschannel').value = g_CurrentInstrument.midichannel;
	$('insdevice').value = g_CurrentInstrument.mididevice;
	$('inspatch').value = g_CurrentInstrument.midipatch;
}

function beginLoadInstrument()
{
	var ins = getCurrentInstrumentID();
	new Ajax.Request( '../c.aspx?', {
			parameters: { 'getinstrument':ins },
			onSuccess:onInstrumentData
		} );
	
}

function propertyChanged(event)
{
	saveInstrument();
}

function onUpdatedInstrument( r ) 
{
	updateInstrumentsList();
}

function saveInstrument()
{
	var ins = getCurrentInstrumentID();
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx?', {
		parameters: { 
			'updateinstrument': ins,
			'session': sid,
			'name': $('insname').value,
			'type': $('instype').value,
			'midichannel': $('inschannel').value,
			'mididevice': $('insdevice').value,
			'midipatch': $('inspatch').value
		},
		onSuccess:onUpdatedInstrument } );
}







var g_DeviceList = [];




function initInstrumentsView()
{
	initPageHeader('INS');
	updateDeviceList();
	updateInstrumentsList();
	beginPolling();
}
