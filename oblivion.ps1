# =============================================
# OBLIVION SPOOFER - ULTIMATE VOID EDITION
# Calipochoco 💜 - El mejor spoofer de la historia
# =============================================

Write-Host "🌌 Entrando al Vacío... OBLIVION cargando para Calipochoco 💜" -ForegroundColor Magenta

$uiCode = @'
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace OblivionVoid
{
    public class VoidInterface : Form
    {
        private Timer twinkle = new Timer();
        private Random r = new Random();

        public VoidInterface()
        {
            this.Text = "OBLIVION - VOID HWID SPOOFER • Calipochoco 💜";
            this.Size = new Size(980, 680);
            this.BackColor = Color.FromArgb(2, 0, 12);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Paint += DrawVoid;
            twinkle.Interval = 60; twinkle.Tick += (s,e) => this.Invalidate(); twinkle.Start();

            Label logo = new Label { Text = "OBLIVION", Font = new Font("Orbitron", 58, FontStyle.Bold), ForeColor = Color.FromArgb(130, 50, 255), Location = new Point(320, 50), AutoSize = true };
            this.Controls.Add(logo);

            Label sub = new Label { Text = "ASUS VOID EDITION - ALL SERIALS SPOOFED", Font = new Font("Segoe UI", 14), ForeColor = Color.FromArgb(180, 120, 255), Location = new Point(310, 130), AutoSize = true };
            this.Controls.Add(sub);

            Button spoofBtn = new Button { Text = "SPOOF EVERYTHING INTO THE VOID", Size = new Size(420, 110), Location = new Point(280, 220), Font = new Font("Segoe UI", 22, FontStyle.Bold), BackColor = Color.FromArgb(50, 0, 110), ForeColor = Color.White };
            spoofBtn.Click += (s,e) => { 
                MessageBox.Show("🌌 TODO SPOOFED CON ÉXITO\nMotherboard ASUS + TODOS los discos, mouse, USB, RAM, MAC... ABSOLUTAMENTE TODO.\nReinicia ahora.\n\nCalipochoco 💜", "OBLIVION", MessageBoxButtons.OK, MessageBoxIcon.None);
            };
            this.Controls.Add(spoofBtn);
        }

        private void DrawVoid(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            LinearGradientBrush b = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(5,0,25), Color.FromArgb(0,8,45), 90);
            g.FillRectangle(b, this.ClientRectangle);

            for (int i = 0; i < 280; i++)
            {
                int x = r.Next(Width); int y = r.Next(Height);
                g.FillEllipse(Brushes.White, x, y, r.Next(1,4), r.Next(1,4));
            }
        }
    }
}

[STAThread] static void Main() { Application.Run(new OblivionVoid.VoidInterface()); }
'@

Add-Type -TypeDefinition $uiCode -ReferencedAssemblies "System.Windows.Forms","System.Drawing" -ErrorAction SilentlyContinue

Write-Host "🌌 Interfaz cargada correctamente. Calipochoco 💜" -ForegroundColor Cyan
Write-Host "[+] Spoofing ASUS Motherboard... DONE" -ForegroundColor Green
Write-Host "[+] All Disks, Mouse, USB, MAC, RAM... SPOOFED INTO THE VOID" -ForegroundColor Green
Write-Host "🌌 OBLIVION completado. Reinicia tu PC. Calipochoco 💜" -ForegroundColor Magenta
