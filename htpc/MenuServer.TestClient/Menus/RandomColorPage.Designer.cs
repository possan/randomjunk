namespace MenuServer.TestClient.Menus
{
    partial class RandomColorPage
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbItems = new System.Windows.Forms.ListBox();
            this.laRM = new System.Windows.Forms.Label();
            this.laTitle = new System.Windows.Forms.Label();
            this.lvActions = new System.Windows.Forms.ListView();
            this.laText = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lbItems
            // 
            this.lbItems.BackColor = System.Drawing.Color.Black;
            this.lbItems.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lbItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbItems.ForeColor = System.Drawing.Color.White;
            this.lbItems.FormattingEnabled = true;
            this.lbItems.IntegralHeight = false;
            this.lbItems.ItemHeight = 18;
            this.lbItems.Location = new System.Drawing.Point(0, 117);
            this.lbItems.Name = "lbItems";
            this.lbItems.Size = new System.Drawing.Size(240, 132);
            this.lbItems.TabIndex = 10;
            this.lbItems.SelectedIndexChanged += new System.EventHandler(this.lbItems_SelectedIndexChanged);
            this.lbItems.DoubleClick += new System.EventHandler(this.lbItems_DoubleClick);
            // 
            // laRM
            // 
            this.laRM.AutoEllipsis = true;
            this.laRM.BackColor = System.Drawing.Color.Black;
            this.laRM.Font = new System.Drawing.Font("Georgia", 7F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.laRM.ForeColor = System.Drawing.Color.Gray;
            this.laRM.Location = new System.Drawing.Point(0, 8);
            this.laRM.Name = "laRM";
            this.laRM.Size = new System.Drawing.Size(237, 22);
            this.laRM.TabIndex = 13;
            this.laRM.Text = "label5";
            // 
            // laTitle
            // 
            this.laTitle.BackColor = System.Drawing.Color.Black;
            this.laTitle.Font = new System.Drawing.Font("Georgia", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.laTitle.ForeColor = System.Drawing.Color.Yellow;
            this.laTitle.Location = new System.Drawing.Point(0, 39);
            this.laTitle.Name = "laTitle";
            this.laTitle.Size = new System.Drawing.Size(482, 26);
            this.laTitle.TabIndex = 12;
            this.laTitle.Text = "label5";
            this.laTitle.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lvActions
            // 
            this.lvActions.BackColor = System.Drawing.Color.Black;
            this.lvActions.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lvActions.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvActions.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.lvActions.Location = new System.Drawing.Point(0, 258);
            this.lvActions.Name = "lvActions";
            this.lvActions.Size = new System.Drawing.Size(240, 58);
            this.lvActions.TabIndex = 14;
            this.lvActions.UseCompatibleStateImageBehavior = false;
            this.lvActions.View = System.Windows.Forms.View.List;
            this.lvActions.SelectedIndexChanged += new System.EventHandler(this.lvActions_SelectedIndexChanged);
            this.lvActions.DoubleClick += new System.EventHandler(this.lvActions_DoubleClick);
            // 
            // laText
            // 
            this.laText.AutoEllipsis = true;
            this.laText.BackColor = System.Drawing.Color.Black;
            this.laText.Font = new System.Drawing.Font("Georgia", 7F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.laText.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.laText.Location = new System.Drawing.Point(0, 74);
            this.laText.Name = "laText";
            this.laText.Size = new System.Drawing.Size(597, 37);
            this.laText.TabIndex = 11;
            this.laText.Text = "label5";
            // 
            // RandomColorPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbItems);
            this.Controls.Add(this.laRM);
            this.Controls.Add(this.laTitle);
            this.Controls.Add(this.lvActions);
            this.Controls.Add(this.laText);
            this.Name = "RandomColorPage";
            this.Size = new System.Drawing.Size(240, 320);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lbItems;
        private System.Windows.Forms.Label laRM;
        private System.Windows.Forms.Label laTitle;
        private System.Windows.Forms.ListView lvActions;
        private System.Windows.Forms.Label laText;
    }
}
