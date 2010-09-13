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
	use namespace mx_internal;

	public class TrackList extends UIComponent
	{
		public function TrackList()
		{
			super();
			leftTime = 0.0;
			rightTime = 5.0;
			scrollOffset = 0;
			scrollTotal = 0;
		}
		
		public var scrollOffset:Number;
		public var scrollTotal:Number;
		public var leftTime:Number;
		public var rightTime:Number;
		
		private var face_mc:Sprite;
		private var hourHand_mc:Sprite;
		private var minuteHand_mc:Sprite;
		private var secondHand_mc:Sprite;
		private var currentTime:Date;
		
		private function measureTrackHeight():void
		{
			scrollTotal = 400.0;
			// scrollOffset = 0;
		}
		
		public function addTrack( t:BaseTrack ):void
		{
			invalidateDisplayList();
			measureTrackHeight();
			addChild( t );
		}
		
		public function removeTrack( t:BaseTrack ):void
		{
			invalidateDisplayList();
			measureTrackHeight();
			removeChild( t );
		}

  		override public function initialize():void 
  		{
  			super.initialize();
       	}
		
		
/*		
  		override public function initialize():void 
  		{
  			super.initialize();
 			currentTime = new Date();
			var myTimer:Timer = new Timer(500, 0);
            myTimer.addEventListener("timer", timerHandler);
            myTimer.start();
            addEventListener( "resize", onResize );
            reposition();
       	}
       	
       	public function onResize(event:ResizeEvent):void
       	{
       		reposition();
       	}

		public function timerHandler(event:TimerEvent):void 
		{
            trace("timerHandler: " + event);
			currentTime = new Date();
			positionHands();
		}
	
		private function positionHands() : void
		{
			var hour:Number   = (currentTime.getHours()%12);
			var minute:Number = currentTime.getMinutes();
			var second:Number = currentTime.getSeconds();
			
			var secondAngle:Number  = second*6 - 90;
			var minuteAngle:Number  = (minute+(second/60))*6 - 90;
			var hourAngle:Number    = (hour+(minute/60))*30 - 90;
			
			hourHand_mc.rotation   = hourAngle;
			minuteHand_mc.rotation = minuteAngle;
			secondHand_mc.rotation = secondAngle;
		} 

		override protected function createChildren() : void
		{
			super.createChildren();
			
			face_mc = new Sprite();
			hourHand_mc = new Sprite();
			minuteHand_mc = new Sprite();
			secondHand_mc = new Sprite();

			var w:Number = Math.min(width,height)/2;
			
			var tc:Number = 0x000000;
			var hc:Number = 0x990000;
			with( face_mc.graphics  ) {
				clear();
				lineStyle(1,tc,100);
				for(var i:Number=0; i < 360; i+=30) {
					var radians:Number = i*Math.PI/180;
					var x1:Number = w*Math.sin(radians);
					var y1:Number = w*Math.cos(radians);
					var x2:Number = Math.round((w-5)*Math.sin(radians));
					var y2:Number = Math.round((w-5)*Math.cos(radians));
					moveTo(x1,y1);
					lineTo(x2,y2);
				}
			}

			
			with( minuteHand_mc.graphics ) {
				clear();
				lineStyle(0,hc,100);
				beginFill(hc,100);
				moveTo(0,0);
				lineTo(w-20,0-4);
				lineTo(w-10,0);
				lineTo(w-20,4);
				lineTo(0,0);
				endFill();
			}
 
			with( hourHand_mc.graphics ) {
				clear();
				lineStyle(0,hc,100);
				beginFill(hc,100);
				moveTo(0,0);
				lineTo(w-30,0-4);
				lineTo(w-20,0);
				lineTo(w-30,4);
				lineTo(0,0);
				endFill();
			} 
			
			with( secondHand_mc.graphics  ) {
				clear();
				lineStyle(0,hc,70);
				moveTo(0,0);
				lineTo(w-10,0);
			}

			this.addChild( face_mc );
			this.addChild( hourHand_mc );
			this.addChild( minuteHand_mc );
			this.addChild( secondHand_mc );

			reposition();
			
            // positionHands();
			// layoutChildren();
		} 

		private function reposition():void
		{
        	var cx:Number = width/2;
			var cy:Number = height/2;
			face_mc.x = cx;
			face_mc.y = cy;
			hourHand_mc.x = cx;
			hourHand_mc.y = cy;
			minuteHand_mc.x = cx;
			minuteHand_mc.y = cy;
			secondHand_mc.x = cx;
			secondHand_mc.y = cy;
		}
		*/
	}
}