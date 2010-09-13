namespace MenuServer.PocketGui
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        private System.Windows.Forms.MainMenu mainMenu1;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.mainMenu1 = new System.Windows.Forms.MainMenu();
            this.miMenu = new System.Windows.Forms.MenuItem();
            this.miHome = new System.Windows.Forms.MenuItem();
            this.miOptions = new System.Windows.Forms.MenuItem();
            this.miExit = new System.Windows.Forms.MenuItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.laStatus = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer();
            this.miBack = new System.Windows.Forms.MenuItem();
            this.SuspendLayout();
            // 
            // mainMenu1
            // 
            this.mainMenu1.MenuItems.Add(this.miMenu);
            // 
            // miMenu
            // 
            this.miMenu.MenuItems.Add(this.miBack);
            this.miMenu.MenuItems.Add(this.miHome);
            this.miMenu.MenuItems.Add(this.miOptions);
            this.miMenu.MenuItems.Add(this.miExit);
            this.miMenu.Text = "Menu";
            // 
            // miHome
            // 
            this.miHome.Text = "Home";
            this.miHome.Click += new System.EventHandler(this.miHome_Click);
            // 
            // miOptions
            // 
            this.miOptions.Text = "Options";
            this.miOptions.Click += new System.EventHandler(this.miOptions_Click);
            // 
            // miExit
            // 
            this.miExit.Text = "Exit";
            this.miExit.Click += new System.EventHandler(this.miExit_Click);
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point(0, 24);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(240, 260);
            // 
            // laStatus
            // 
            this.laStatus.Font = new System.Drawing.Font("Tahoma", 7F, System.Drawing.FontStyle.Regular);
            this.laStatus.Location = new System.Drawing.Point(3, 4);
            this.laStatus.Name = "laStatus";
            this.laStatus.Size = new System.Drawing.Size(237, 17);
            this.laStatus.Text = "label1";
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // miBack
            // 
            this.miBack.Text = "Back";
            this.miBack.Click += new System.EventHandler(this.miBack_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(96F, 96F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(240, 294);
            this.Controls.Add(this.laStatus);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.KeyPreview = true;
            this.Location = new System.Drawing.Point(0, 0);
            this.Menu = this.mainMenu1;
            this.Name = "Form1";
            this.Text = "MenuSystem Pocket GUI";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.MenuItem miMenu;
        private System.Windows.Forms.MenuItem miOptions;
        private System.Windows.Forms.MenuItem miExit;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label laStatus;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.MenuItem miHome;
        private System.Windows.Forms.MenuItem miBack;
    }
}

