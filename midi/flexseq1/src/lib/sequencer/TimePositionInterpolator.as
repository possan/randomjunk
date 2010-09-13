/*
 * Simple AnalogClock Component
 */
	 
package sequencer
{
	import mx.core.*;
	import sequencer.*;
	
	public class TimePositionInterpolator
	{
		public function TimePositionInterpolator()
		{
			minTime = 0.0;
			maxTime = 60.0;
			minPosition = 0.0;
			maxPosition = 100.0;
		}
		
		public var minTime:Number ;
		public var maxTime:Number ;
		public var minPosition:Number ;
		public var maxPosition:Number ;
		
		public function fromTime( time:Number ):Number { return RangeInterpolator.MapFloat( time, minTime, maxTime, minPosition, maxPosition ); }
		public function toTime( pos:Number ):Number {	return RangeInterpolator.MapFloat( pos, minPosition, maxPosition, minTime, maxTime ); }
		public function fromPosition( pos:Number ):Number { return toTime( pos ); }
		public function toPosition( time:Number ):Number { return fromTime( time ); }
	}
}