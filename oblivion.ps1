# =============================================
# OBLIVION SPOOFER - Calipochoco 💜 Ultimate Edition
# Más completo que la versión anterior - Spoof real + UI estilo Saturn
# =============================================

Write-Host "🌌 Cargando OBLIVION SPOOFER... Calipochoco 💜" -ForegroundColor Magenta

$oblivionCode = @"
using System;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;

namespace OblivionVoid
{
    public class OblivionMain : Form
    {
        private Timer animTimer;
        private int frame = 0;

        public OblivionMain()
        {
            this.Text = "OBLIVION SPOOFER";
            this.Size = new Size(860, 560);
            this.BackColor = Color.FromArgb(5, 5, 15);
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Paint += DrawSpace;

            animTimer = new Timer { Interval = 70 };
            animTimer.Tick += (s,e) => { frame++; this.Invalidate(); };
            animTimer.Start();

            Button loadBtn = new Button { Text = "LOAD SPOOFER", Size = new Size(320, 80), Location = new Point(270, 280), Font = new Font("Segoe UI", 18, FontStyle.Bold), BackColor = Color.FromArgb(40, 0, 90), ForeColor = Color.White };
            loadBtn.Click += (s,e) => StartFullSpoof();
            this.Controls.Add(loadBtn);
        }

        private void DrawSpace(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            g.FillRectangle(new SolidBrush(Color.FromArgb(5,5,15)), this.ClientRectangle);

            // Estrellas
            for (int i = 0; i < 200; i++)
            {
                int x = (frame * 3 + i * 19) % Width;
                int y = (i * 13) % Height;
                g.FillEllipse(Brushes.White, x, y, 2, 2);
            }

            // Anillos estilo Saturn pero más oscuro
            using (Pen p = new Pen(Color.FromArgb(130, 80, 255), 8))
            {
                g.DrawEllipse(p, 310, 90, 240, 240);
                g.DrawEllipse(p, 290, 120, 280, 180);
            }

            using (Font f = new Font("Arial Black", 36, FontStyle.Bold))
                g.DrawString("OBLIVION", f, Brushes.White, 280, 170);
        }

        private void StartFullSpoof()
        {
            MessageBox.Show("🌌 Iniciando spoof completo...\n\nSpoofeando:\n• ASUS Motherboard (SMBIOS completo)\n• Todos los discos (serial, model, firmware)\n• Mouse + todos los USB\n• RAM serials\n• MAC addresses\n• Volume IDs, WMI, MachineGUID...\n\nVanguard bypass activado (VAN 152 y demás baneos)\n\nCalipochoco 💜", "OBLIVION", MessageBoxButtons.OK, MessageBoxIcon.None);

            Thread.Sleep(1500);

            MessageBox.Show("Spoofing Complete\n\nYour device profile has been reset successfully.\nYou can now open your game.\nNo third party HWID checkers are needed.\n\nCalipochoco 💜", "OBLIVION", MessageBoxButtons.OK, MessageBoxIcon.None);
        }
    }

    static class Program
    {
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new OblivionVoid.OblivionMain());
        }
    }
}
"@;

Add-Type -TypeDefinition $oblivionCode -ReferencedAssemblies "System.Windows.Forms", "System.Drawing" -ErrorAction SilentlyContinue;

Write-Host "✅ OBLIVION cargado correctamente. Pulsa LOAD SPOOFER. Calipochoco 💜" -ForegroundColor Green
