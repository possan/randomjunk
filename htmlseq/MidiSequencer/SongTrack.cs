using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
    public class SongTrack
    {
        public string ID;
        public string Name;
        public string InstrumentID;
        public string LivePatternID;
        public string CuedPatternID;
        public int Volume;
        public List<SongTrackItem> Items;
        public long LastPatternSubTick;
        public long PatternSubTick;
        public long PatternTick;
        public long LastPatternTick;
        public string CurrentPatternID;
        public Pattern CurrentPatternObj;
        public Instrument CurrentInstrumentObj;
        public int CurrentPatternDurationTicks;
        public bool Muted;
        public bool Solo;
        public int Transpose;

        public SongTrack()
        {
            ID = "";
            Name = "";
            InstrumentID = "";
            LivePatternID = "";
            CuedPatternID = "";
            Volume = 100;
            LastPatternTick = -99;
            PatternSubTick = 0;
            LastPatternSubTick = 0;
            PatternTick = 0;
            CurrentPatternID = "";
            CurrentPatternObj = null;
            Muted = false;
            Solo = false;
            CurrentPatternDurationTicks = 0;
            CurrentInstrumentObj = null;
            Items = new List<SongTrackItem>();
            Transpose = 0;
        }

        public bool LoadFromXML(XmlNode node)
        {
            if (node.Attributes["id"] != null)
            {
                ID = node.Attributes["id"].Value;
            }

            if (node.Attributes["name"] != null)
            {
                Name = node.Attributes["name"].Value;
            }

            if (node.Attributes["instrument"] != null)
            {
                InstrumentID = node.Attributes["instrument"].Value;
            }

            if (node.Attributes["livepattern"] != null)
            {
                LivePatternID = node.Attributes["livepattern"].Value;
            }

            if (node.Attributes["volume"] != null)
            {
                int i = 0;
                int.TryParse(node.Attributes["volume"].Value, out i);
                Volume = i;
            }
            if (node.Attributes["mute"] != null)
            {
                int i = 0;
                int.TryParse(node.Attributes["mute"].Value, out i);
                Muted = (i == 1);
            }
            if (node.Attributes["solo"] != null)
            {
                int i = 0;
                int.TryParse(node.Attributes["solo"].Value, out i);
                Solo = (i == 1);
            }

            if (node.Attributes["transpose"] != null)
            {
                int i = 0;
                int.TryParse(node.Attributes["transpose"].Value, out i);
                Transpose = i;
            }

            XmlNodeList nl = node.SelectNodes("items/item");
            for (int j = 0; j < nl.Count; j++)
            {
                SongTrackItem pn = new SongTrackItem();
                if (pn.LoadFromXML(nl[j]))
                    Items.Add(pn);
            }


            return true;
        }

        public bool SaveToXML(XmlNode parent)
        {
            XmlNode rootel = Utilities.AddXmlElement(parent, "track");
            Utilities.AddXmlAttribute(rootel, "id", ID);
            Utilities.AddXmlAttribute(rootel, "name", Name);
            Utilities.AddXmlAttribute(rootel, "instrument", InstrumentID);
            Utilities.AddXmlAttribute(rootel, "livepattern", LivePatternID);
            // Utilities.AddXmlAttribute(rootel, "cuepat", CuedPatternID);
            Utilities.AddXmlAttribute(rootel, "volume", Volume.ToString());
            Utilities.AddXmlAttribute(rootel, "transpose", Transpose.ToString());
            Utilities.AddXmlAttribute(rootel, "mute", (Muted ? 1 : 0).ToString());
            Utilities.AddXmlAttribute(rootel, "solo", (Solo ? 1 : 0).ToString());

            XmlNode itemsel = Utilities.AddXmlElement(rootel, "items");
            for (int j = 0; j < Items.Count; j++)
                Items[j].SaveToXML(itemsel);

            return false;
        }
    }
}
