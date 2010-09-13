namespace MenuServer.TestClient
{
    partial class Form1
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.buConnect = new System.Windows.Forms.Button();
            this.buGo = new System.Windows.Forms.Button();
            this.tbHost = new System.Windows.Forms.TextBox();
            this.lbItems = new System.Windows.Forms.ListBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.buBack = new System.Windows.Forms.Button();
            this.ddHistory = new System.Windows.Forms.ComboBox();
            this.laTitle = new System.Windows.Forms.Label();
            this.laText = new System.Windows.Forms.Label();
            this.tbPath = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.laRM = new System.Windows.Forms.Label();
            this.lvActions = new System.Windows.Forms.ListView();
            this.ucAnimator = new MenuServer.TestClient.MenuPlaceholder();
            this.buAnim1 = new System.Windows.Forms.Button();
            this.buAnim2 = new System.Windows.Forms.Button();
            this.buAnim3 = new System.Windows.Forms.Button();
            this.buAnim5 = new System.Windows.Forms.Button();
            this.buAnim4 = new System.Windows.Forms.Button();
            this.buAnim6 = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // buConnect
            // 
            this.buConnect.Location = new System.Drawing.Point(543, 21);
            this.buConnect.Name = "buConnect";
            this.buConnect.Size = new System.Drawing.Size(75, 23);
            this.buConnect.TabIndex = 0;
            this.buConnect.Text = "Connect";
            this.buConnect.UseVisualStyleBackColor = true;
            this.buConnect.Click += new System.EventHandler(this.buConnect_Click);
            // 
            // buGo
            // 
            this.buGo.Location = new System.Drawing.Point(251, 70);
            this.buGo.Name = "buGo";
            this.buGo.Size = new System.Drawing.Size(60, 23);
            this.buGo.TabIndex = 1;
            this.buGo.Text = "Go there";
            this.buGo.UseVisualStyleBackColor = true;
            this.buGo.Click += new System.EventHandler(this.buGo_Click);
            // 
            // tbHost
            // 
            this.tbHost.Location = new System.Drawing.Point(12, 23);
            this.tbHost.Name = "tbHost";
            this.tbHost.Size = new System.Drawing.Size(525, 20);
            this.tbHost.TabIndex = 2;
            // 
            // lbItems
            // 
            this.lbItems.BackColor = System.Drawing.Color.Black;
            this.lbItems.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lbItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbItems.ForeColor = System.Drawing.Color.White;
            this.lbItems.FormattingEnabled = true;
            this.lbItems.IntegralHeight = false;
            this.lbItems.ItemHeight = 25;
            this.lbItems.Location = new System.Drawing.Point(12, 218);
            this.lbItems.Name = "lbItems";
            this.lbItems.Size = new System.Drawing.Size(606, 186);
            this.lbItems.TabIndex = 3;

            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 56);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Path:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 7);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(41, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Server:";
            // 
            // buBack
            // 
            this.buBack.Location = new System.Drawing.Point(543, 70);
            this.buBack.Name = "buBack";
            this.buBack.Size = new System.Drawing.Size(75, 23);
            this.buBack.TabIndex = 1;
            this.buBack.Text = "Go back";
            this.buBack.UseVisualStyleBackColor = true;
            this.buBack.Click += new System.EventHandler(this.buBack_Click);
            // 
            // ddHistory
            // 
            this.ddHistory.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ddHistory.FormattingEnabled = true;
            this.ddHistory.Location = new System.Drawing.Point(332, 71);
            this.ddHistory.Name = "ddHistory";
            this.ddHistory.Size = new System.Drawing.Size(205, 21);
            this.ddHistory.TabIndex = 5;
            this.ddHistory.SelectedIndexChanged += new System.EventHandler(this.cbPath_SelectedIndexChanged);
            this.ddHistory.KeyDown += new System.Windows.Forms.KeyEventHandler(this.cbPath_KeyDown);
            // 
            // laTitle
            // 
            this.laTitle.BackColor = System.Drawing.Color.Black;
            this.laTitle.Font = new System.Drawing.Font("Georgia", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.laTitle.ForeColor = System.Drawing.Color.Yellow;
            this.laTitle.Location = new System.Drawing.Point(14, 35);
            this.laTitle.Name = "laTitle";
            this.laTitle.Size = new System.Drawing.Size(482, 36);
            this.laTitle.TabIndex = 6;
            this.laTitle.Text = "label5";
            this.laTitle.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // laText
            // 
            this.laText.AutoEllipsis = true;
            this.laText.BackColor = System.Drawing.Color.Black;
            this.laText.Font = new System.Drawing.Font("Georgia", 10F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.laText.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.laText.Location = new System.Drawing.Point(17, 72);
            this.laText.Name = "laText";
            this.laText.Size = new System.Drawing.Size(597, 37);
            this.laText.TabIndex = 6;
            this.laText.Text = "label5";
            // 
            // tbPath
            // 
            this.tbPath.Location = new System.Drawing.Point(12, 72);
            this.tbPath.Name = "tbPath";
            this.tbPath.Size = new System.Drawing.Size(233, 20);
            this.tbPath.TabIndex = 2;
            this.tbPath.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbPath_KeyDown);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(329, 55);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "History:";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Black;
            this.panel1.Controls.Add(this.laRM);
            this.panel1.Controls.Add(this.laTitle);
            this.panel1.Controls.Add(this.lvActions);
            this.panel1.Controls.Add(this.laText);
            this.panel1.Location = new System.Drawing.Point(-1, 99);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(657, 476);
            this.panel1.TabIndex = 7;
            // 
            // laRM
            // 
            this.laRM.AutoEllipsis = true;
            this.laRM.BackColor = System.Drawing.Color.Black;
            this.laRM.Font = new System.Drawing.Font("Georgia", 10F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.laRM.ForeColor = System.Drawing.Color.Gray;
            this.laRM.Location = new System.Drawing.Point(18, 13);
            this.laRM.Name = "laRM";
            this.laRM.Size = new System.Drawing.Size(395, 22);
            this.laRM.TabIndex = 6;
            this.laRM.Text = "label5";
            // 
            // lvActions
            // 
            this.lvActions.BackColor = System.Drawing.Color.Black;
            this.lvActions.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lvActions.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvActions.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.lvActions.Location = new System.Drawing.Point(13, 311);
            this.lvActions.Name = "lvActions";
            this.lvActions.Size = new System.Drawing.Size(606, 58);
            this.lvActions.TabIndex = 9;
            this.lvActions.UseCompatibleStateImageBehavior = false;
            this.lvActions.View = System.Windows.Forms.View.List;
            this.lvActions.DoubleClick += new System.EventHandler(this.lvActions_DoubleClick);
            // 
            // ucAnimator
            // 
            this.ucAnimator.Location = new System.Drawing.Point(687, 23);
            this.ucAnimator.Name = "ucAnimator";
            this.ucAnimator.Size = new System.Drawing.Size(240, 320);
            this.ucAnimator.TabIndex = 8;
            // 
            // buAnim1
            // 
            this.buAnim1.Location = new System.Drawing.Point(687, 349);
            this.buAnim1.Name = "buAnim1";
            this.buAnim1.Size = new System.Drawing.Size(75, 23);
            this.buAnim1.TabIndex = 9;
            this.buAnim1.Text = "fwd new";
            this.buAnim1.UseVisualStyleBackColor = true;
            this.buAnim1.Click += new System.EventHandler(this.buAnim1_Click);
            // 
            // buAnim2
            // 
            this.buAnim2.Location = new System.Drawing.Point(768, 349);
            this.buAnim2.Name = "buAnim2";
            this.buAnim2.Size = new System.Drawing.Size(75, 23);
            this.buAnim2.TabIndex = 9;
            this.buAnim2.Text = "back new";
            this.buAnim2.UseVisualStyleBackColor = true;
            this.buAnim2.Click += new System.EventHandler(this.buAnim2_Click);
            // 
            // buAnim3
            // 
            this.buAnim3.Location = new System.Drawing.Point(849, 349);
            this.buAnim3.Name = "buAnim3";
            this.buAnim3.Size = new System.Drawing.Size(75, 23);
            this.buAnim3.TabIndex = 9;
            this.buAnim3.Text = "repl new";
            this.buAnim3.UseVisualStyleBackColor = true;
            this.buAnim3.Click += new System.EventHandler(this.buAnim3_Click);
            // 
            // buAnim5
            // 
            this.buAnim5.Location = new System.Drawing.Point(768, 378);
            this.buAnim5.Name = "buAnim5";
            this.buAnim5.Size = new System.Drawing.Size(75, 23);
            this.buAnim5.TabIndex = 9;
            this.buAnim5.Text = "back null";
            this.buAnim5.UseVisualStyleBackColor = true;
            this.buAnim5.Click += new System.EventHandler(this.buAnim5_Click);
            // 
            // buAnim4
            // 
            this.buAnim4.Location = new System.Drawing.Point(687, 378);
            this.buAnim4.Name = "buAnim4";
            this.buAnim4.Size = new System.Drawing.Size(75, 23);
            this.buAnim4.TabIndex = 9;
            this.buAnim4.Text = "fwd null";
            this.buAnim4.UseVisualStyleBackColor = true;
            this.buAnim4.Click += new System.EventHandler(this.buAnim4_Click);
            // 
            // buAnim6
            // 
            this.buAnim6.Location = new System.Drawing.Point(849, 378);
            this.buAnim6.Name = "buAnim6";
            this.buAnim6.Size = new System.Drawing.Size(75, 23);
            this.buAnim6.TabIndex = 9;
            this.buAnim6.Text = "repl null";
            this.buAnim6.UseVisualStyleBackColor = true;
            this.buAnim6.Click += new System.EventHandler(this.buAnim6_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1166, 483);
            this.Controls.Add(this.buAnim6);
            this.Controls.Add(this.buAnim4);
            this.Controls.Add(this.buAnim3);
            this.Controls.Add(this.buAnim5);
            this.Controls.Add(this.buAnim2);
            this.Controls.Add(this.buAnim1);
            this.Controls.Add(this.ucAnimator);
            this.Controls.Add(this.ddHistory);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbPath);
            this.Controls.Add(this.lbItems);
            this.Controls.Add(this.tbHost);
            this.Controls.Add(this.buBack);
            this.Controls.Add(this.buGo);
            this.Controls.Add(this.buConnect);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Menu debugging client";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buConnect;
        private System.Windows.Forms.Button buGo;
        private System.Windows.Forms.TextBox tbHost;
        private System.Windows.Forms.ListBox lbItems;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button buBack;
        private System.Windows.Forms.ComboBox ddHistory;
        private System.Windows.Forms.Label laTitle;
        private System.Windows.Forms.Label laText;
        private System.Windows.Forms.TextBox tbPath;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ListView lvActions;
        private System.Windows.Forms.Label laRM;
        private MenuPlaceholder ucAnimator;
        private System.Windows.Forms.Button buAnim1;
        private System.Windows.Forms.Button buAnim2;
        private System.Windows.Forms.Button buAnim3;
        private System.Windows.Forms.Button buAnim5;
        private System.Windows.Forms.Button buAnim4;
        private System.Windows.Forms.Button buAnim6;
    }
}

