/*
 * Simple AnalogClock Component
 */
	 
package sequencer
{
	import mx.core.*;
	import sequencer.*;

	public class PositionValueInterpolator 
	{
		public function PositionValueInterpolator()
		{
			minPosition = 0.0;
			maxPosition = 100.0;
			minValue = 0.0;
			maxValue = 100.0;
		}
		
		public var minPosition:Number ;
		public var maxPosition:Number ;
		public var minValue:Number ;
		public var maxValue:Number ;
		
		public function fromPosition( pos:Number ):Number { return RangeInterpolator.MapFloat( pos, minPosition, maxPosition, minValue, maxValue ); }
		public function toPosition( value:Number ):Number {	return RangeInterpolator.MapFloat( value, minValue, maxValue, minPosition, maxPosition  ); }
		public function fromValue( value:Number ):Number { return toPosition( value ); }
		public function toValue( pos:Number ):Number { return fromPosition( pos ); }
	}
}