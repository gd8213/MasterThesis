namespace Visualization
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
            this.btConnectPLC = new System.Windows.Forms.Button();
            this.btWriteParameter = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btConnectPLC
            // 
            this.btConnectPLC.AutoSize = true;
            this.btConnectPLC.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btConnectPLC.Dock = System.Windows.Forms.DockStyle.Top;
            this.btConnectPLC.Location = new System.Drawing.Point(3, 16);
            this.btConnectPLC.Name = "btConnectPLC";
            this.btConnectPLC.Size = new System.Drawing.Size(259, 23);
            this.btConnectPLC.TabIndex = 0;
            this.btConnectPLC.Text = "Connect to PLC";
            this.btConnectPLC.UseVisualStyleBackColor = true;
            this.btConnectPLC.Click += new System.EventHandler(this.btConnectPLC_Click);
            // 
            // btWriteParameter
            // 
            this.btWriteParameter.AutoSize = true;
            this.btWriteParameter.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btWriteParameter.Dock = System.Windows.Forms.DockStyle.Top;
            this.btWriteParameter.Location = new System.Drawing.Point(3, 16);
            this.btWriteParameter.Name = "btWriteParameter";
            this.btWriteParameter.Size = new System.Drawing.Size(259, 23);
            this.btWriteParameter.TabIndex = 1;
            this.btWriteParameter.Text = "Write Parameter to Inventor";
            this.btWriteParameter.UseVisualStyleBackColor = true;
            this.btWriteParameter.Click += new System.EventHandler(this.btWriteParameter_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.AutoSize = true;
            this.groupBox1.Controls.Add(this.btConnectPLC);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(265, 42);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // groupBox2
            // 
            this.groupBox2.AutoSize = true;
            this.groupBox2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.groupBox2.Controls.Add(this.btWriteParameter);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.Location = new System.Drawing.Point(0, 42);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(265, 42);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "groupBox2";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(265, 270);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btConnectPLC;
        private System.Windows.Forms.Button btWriteParameter;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
    }
}

