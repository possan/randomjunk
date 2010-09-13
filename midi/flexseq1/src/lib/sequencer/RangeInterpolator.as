/*
 * Simple AnalogClock Component
 */
	 
package sequencer
{
	import mx.core.*;

	public class RangeInterpolator
	{
		public function RangeInterpolator()
		{
			minInputValue = 0.0;
			maxInputValue = 100.0;
			minOutputValue = 0.0;
			maxOutputValue = 100.0;
		}
		
		public var minInputValue:Number;
		public var maxInputValue:Number;
		public var minOutputValue:Number;
		public var maxOutputValue:Number;
	
		public static function MapFloat( input:Number, mininput:Number, maxinput:Number, minoutput:Number, maxoutput:Number ):Number
		{
			var t:Number = input;
			t -= mininput;
			t /= (maxinput - mininput);
			t *= (maxoutput - minoutput);
			t += minoutput;
			return t;
		}

		public function fromInputValue( v:Number ):Number { return RangeInterpolator.MapFloat( v, minInputValue, maxInputValue, minOutputValue, maxOutputValue ); }
		public function toInputValue( v:Number ):Number { return RangeInterpolator.MapFloat( v, minOutputValue, maxOutputValue, minInputValue, maxInputValue ); }
		public function fromOutputValue( v:Number ):Number { return toInputValue( v ); }
		public function toOutputValue( v:Number ):Number { return toOutputValue( v ); }
	}
}