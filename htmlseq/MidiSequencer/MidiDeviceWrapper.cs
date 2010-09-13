using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sanford.Multimedia.Midi;
using System.Threading;

namespace MidiSequencer
{
	class MidiDeviceWrapper
	{
		public MidiDeviceWrapper(int id)
		{
            Console.WriteLine("Creating a midi device wrapper for device #" + id);
			queue = new Queue<IMidiMessage>();
			try
			{
				device = new OutputDevice(id);
			}
			catch (Exception x)
			{
				Console.WriteLine(x.ToString());
			}

		}

		public void Close()
		{
			if (device != null)
				device.Close();
			queue.Clear();
		}

		public Queue<IMidiMessage> queue;
		public OutputDevice device;
	}
     
}
