using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Possan.WebServer;
using System.IO;
using System.Net;
using MidiSequencer;
using Norkay.Utilities;
using HtmlSeq.Common;
using System.Globalization;

namespace HtmlSeq.Server
{
	class Program
	{
		// 		public Song m_CurrentSong;

		static void Main(string[] args)
		{
			Notifications.Init();
			SessionManager.Init();

			MidiWrapper.Start();

			State.CurrentSong = new MidiSequencer.Song();
			//			State.CurrentSong = MidiSequencer.Song.CreateDummySong();
			State.CurrentSong.Reset();
			State.CurrentSong.LoadFromFile("last.xml");
            for (int j = 0; j < 5; j++)

                //                State.CurrentSong.Tracks[j % State.CurrentSong.Tracks.Count].CuedPatternID = State.CurrentSong.Patterns[j % State.CurrentSong.Patterns.Count].ID;
               State.CurrentSong.Tracks[j % State.CurrentSong.Tracks.Count].CuedPatternID =
                State.CurrentSong.Tracks[j % State.CurrentSong.Tracks.Count].LivePatternID;
 
			State.Sequencer = new MasterSequencer();
			State.Sequencer.CurrentSong = State.CurrentSong;

			SeqThread seqthread = new SeqThread();
			WebServerInterface server = new WebServerInterface();

			server.Start( "localhost", 82 );
			seqthread.Start();

			Console.ReadLine();


			seqthread.Stop();
			server.Stop();
			MidiWrapper.Stop();

			State.CurrentSong.SaveToFile("autosave-" + DateTime.Now.ToString("yyyyMMdd-hhiiss",CultureInfo.InvariantCulture) + ".xml");
			State.CurrentSong.SaveToFile("last.xml");

		}

	}
}
