namespace MenuServer.PocketGui.Menus
{
    partial class DefaultMenu
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
            this.laTitle = new System.Windows.Forms.Label();
            this.ucItems = new MenuServer.PocketGui.Controls.Itemlist();
            this.ucActions = new MenuServer.PocketGui.Controls.ActionBar();
            this.SuspendLayout();
            // 
            // laTitle
            // 
            this.laTitle.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular);
            this.laTitle.ForeColor = System.Drawing.Color.White;
            this.laTitle.Location = new System.Drawing.Point(0, 10);
            this.laTitle.Name = "laTitle";
            this.laTitle.Size = new System.Drawing.Size(240, 27);
            this.laTitle.Text = "label1";
            this.laTitle.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // ucItems
            // 
            this.ucItems.Location = new System.Drawing.Point(0, 40);
            this.ucItems.Name = "ucItems";
            this.ucItems.Size = new System.Drawing.Size(240, 170);
            this.ucItems.TabIndex = 2;
            // 
            // ucActions
            // 
            this.ucActions.Location = new System.Drawing.Point(0, 220);
            this.ucActions.Name = "ucActions";
            this.ucActions.Size = new System.Drawing.Size(240, 100);
            this.ucActions.TabIndex = 1;
            // 
            // DefaultMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(96F, 96F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.BackColor = System.Drawing.Color.Black;
            this.Controls.Add(this.ucItems);
            this.Controls.Add(this.ucActions);
            this.Controls.Add(this.laTitle);
            this.Name = "DefaultMenu";
            this.Size = new System.Drawing.Size(240, 320);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label laTitle;
        private MenuServer.PocketGui.Controls.ActionBar ucActions;
        private MenuServer.PocketGui.Controls.Itemlist ucItems;
    }
}
