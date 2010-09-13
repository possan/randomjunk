
function onPollData( r )
{
	var cmd = r.responseText.split('|');
	//	console.log( 'poll got: ', cmd );
	if( cmd.length > 0 )
	{
		if( cmd[0] == 'timing-changed' )
		{
			beginLoadValues();
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

function onGetTiming( r )
{
	var data = r.responseText.evalJSON( false );

	$('bpm').value = data.bpm.toString();
	$('measure1').value = data.measure1.toString();
	$('measure2').value = data.measure2.toString();
} 

function beginLoadValues()
{
	var sid = getCurrentSessionID();
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'gettiming': sid }, 
		onSuccess:onGetTiming } );
}

function onSetTiming( r )
{
}

function timingChanged( evt )
{
	var sid = getCurrentSessionID();
	var bpm = parseInt( $('bpm').value );
	if( isNaN( bpm ) )	
		bpm = 0; 
	var m1 = parseInt( $('measure1').value );
	if( isNaN( m1 ) )	
		m1 = 0; 
	var m2 = parseInt( $('measure2').value );
	if( isNaN( m2 ) )	
		m2 = 0; 
	new Ajax.Request( '../c.aspx', {
		parameters:{ 'settiming': sid, 'bpm':bpm, 'measure1':m1, 'measure2':m2 },
		 onSuccess:onSetTiming } );
}

function initSettingsView()
{
	initPageHeader('SET');
	beginLoadValues();
	beginPolling();
}
