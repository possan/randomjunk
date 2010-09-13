using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sanford.Multimedia.Midi;
using System.Threading;

namespace MidiSequencer
{ 

	public class MidiWrapper
	{
		static Dictionary<int, MidiDeviceWrapper> devices = null;

		public static void Start()
		{
			devices = new Dictionary<int, MidiDeviceWrapper>();
		}

		public static void ReloadDevices()
		{
			RemoveAll();
		}

		public static void Stop()
		{
			RemoveAll();
		}

		static void RemoveAll()
		{
			Dictionary<int, MidiDeviceWrapper>.Enumerator enu = devices.GetEnumerator();
			while (enu.MoveNext())
			{
				if (enu.Current.Value != null)
					enu.Current.Value.Close();
			}
			devices.Clear();
		}

		public static List<int> GetDeviceIDs()
		{


			int n = OutputDevice.DeviceCount;

			List<int> list = new List<int>();

			for (int j = 0; j < n; j++)
				list.Add(j);
			return list;
		}

		public static string GetDeviceName(int id)
		{
			string nam = "Unnamed";
			try
			{
				MidiOutCaps caps = OutputDevice.GetDeviceCapabilities(id);
				nam = caps.name;
			}
			catch (Exception)
			{
			}
			return id.ToString("000") + ": " + nam;
		}

		static void ensureDevice(int id)
		{
			if (!devices.ContainsKey(id))
				devices.Add(id, new MidiDeviceWrapper(id));
		}

		public static void QueueNoteOn(int device, int channel, int note, int velocity)
        {
            Console.WriteLine("Midi: NOTE-ON: device=" + device + ", channel=" + channel + ", note=" + note+", velocity="+velocity);

			ensureDevice(device);
			if (devices.ContainsKey(device))
				devices[device].device.Send(new ChannelMessage(ChannelCommand.NoteOn, channel, note, velocity));
			// devices[device].queue.Enqueue(new ChannelMessage(ChannelCommand.NoteOn, channel, note, velocity));
		}

		public static void QueueNoteOff(int device, int channel, int note)
		{
            Console.WriteLine("Midi NOTE-OFF: device=" + device + ", channel=" + channel + ", note=" + note);
			ensureDevice(device);
			if (devices.ContainsKey(device))
				devices[device].device.Send(new ChannelMessage(ChannelCommand.NoteOff, channel, note));
			// devices[device].queue.Enqueue(new ChannelMessage(ChannelCommand.NoteOff, channel, note));
		}

		public static void QueueControlChange(int device, int channel, int control, int value)
		{
			ensureDevice(device);
			if (devices.ContainsKey(device))
				devices[device].device.Send(new ChannelMessage(ChannelCommand.Controller, channel, control, value));
			// devices[device].queue.Enqueue(new ChannelMessage(ChannelCommand.Controller, channel, control, value));
		}

		public static void QueueProgramChange(int device, int channel, int program)
		{
			ensureDevice(device);
			if (devices.ContainsKey(device))
				devices[device].device.Send(new ChannelMessage(ChannelCommand.ProgramChange, channel, program));
			// devices[device].queue.Enqueue(new ChannelMessage(ChannelCommand.ProgramChange, channel, program));
		}

		public static void ClearQueue()
		{
			/*
			Dictionary<int, MidiDeviceWrapper>.Enumerator enu = devices.GetEnumerator();
			while (enu.MoveNext())
			{
				enu.Current.Value.queue.Clear();

			}*/
		}

		public static void ProcessQueue()
		{
			/*
			// kolla om vi behöver öppna några nya devices
			Dictionary<int, MidiDeviceWrapper>.Enumerator enu = devices.GetEnumerator();
			while (enu.MoveNext())
			{
				MidiDeviceWrapper dev = enu.Current.Value;
				while (dev.queue.Count > 0)
				{
					IMidiMessage msg = dev.queue.Dequeue();
					dev.device.Send(msg);
				}
			}*/
		}

	}
}
