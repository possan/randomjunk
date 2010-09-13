/*
 * Simple AnalogClock Component
 */
	 
package sequencer
{
	import mx.core.*;
	import mx.skins.*;
	import mx.events.*;
	import mx.managers.*;
	import flash.display.*;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
	import sequencer.*;
	
	use namespace mx_internal;

	public class TrackViewport
	{
		private var range:TimePositionInterpolator;
		
		public function TrackViewport()
		{
			range = new TimePositionInterpolator();
			range.minTime = 0.0;
			range.maxTime = 30.0;
			range.minPosition = 0.0;
			range.maxPosition = 400.0;
			var t1:Number = range.fromPosition( 0.0 );
			var t2:Number = range.fromPosition( 100.0 );
		}
		
		
		
	}
}