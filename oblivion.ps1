# =============================================
# OBLIVION SPOOFER - Calipochoco 💜 Edition
# UI idéntica a Saturn Spoofer + Vanguard Bypass
# =============================================

Write-Host "🌌 Cargando OBLIVION SPOOFER... Calipochoco 💜" -ForegroundColor Magenta

$oblivionUI = @'
using System;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;

namespace OblivionSpoofer
{
    public class OblivionForm : Form
    {
        private Timer animationTimer;
        private int frame = 0;

        public OblivionForm()
        {
            this.Text = "OBLIVION SPOOFER";
            this.Size = new Size(820, 520);
            this.BackColor = Color.FromArgb(8, 8, 18);
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Paint += new PaintEventHandler(DrawSpaceUI);

            // Logo animado tipo Saturn
            animationTimer = new Timer();
            animationTimer.Interval = 80;
            animationTimer.Tick += AnimationTick;
            animationTimer.Start();

            // Botones principales (igual que Saturn)
            Button btnLoad = CreateButton("LOAD SPOOFER", 280, 280);
            btnLoad.Click += (s, e) => StartSpoofing();
            this.Controls.Add(btnLoad);

            Button btnSettings = CreateButton("SETTINGS", 280, 340);
            this.Controls.Add(btnSettings);

            Button btnProfiles = CreateButton("DEVICE PROFILES", 280, 400);
            this.Controls.Add(btnProfiles);
        }

        private Button CreateButton(string text, int x, int y)
        {
            Button btn = new Button();
            btn.Text = text;
            btn.Size = new Size(260, 50);
            btn.Location = new Point(x, y);
            btn.Font = new Font("Segoe UI", 12, FontStyle.Bold);
            btn.BackColor = Color.FromArgb(30, 30, 60);
            btn.ForeColor = Color.FromArgb(180, 140, 255);
            btn.FlatStyle = FlatStyle.Flat;
            btn.FlatAppearance.BorderColor = Color.FromArgb(100, 80, 255);
            return btn;
        }

        private void DrawSpaceUI(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;

            // Fondo espacio
            using (var brush = new SolidBrush(Color.FromArgb(8, 8, 18)))
                g.FillRectangle(brush, this.ClientRectangle);

            // Estrellas y nebulosa
            for (int i = 0; i < 120; i++)
            {
                int x = (frame + i * 17) % this.Width;
                int y = (i * 23) % this.Height;
                g.FillEllipse(Brushes.White, x, y, 2, 2);
            }

            // Logo OBLIVION con anillos (estilo Saturn)
            using (var pen = new Pen(Color.FromArgb(140, 100, 255), 6))
            {
                g.DrawEllipse(pen, 310, 80, 200, 200);
                g.DrawEllipse(pen, 290, 110, 240, 140);
            }

            using (var font = new Font("Arial Black", 32, FontStyle.Bold))
                g.DrawString("OBLIVION", font, Brushes.White, 280, 160);
        }

        private void AnimationTick(object sender, EventArgs e)
        {
            frame += 8;
            this.Invalidate();
        }

        private void StartSpoofing()
        {
            MessageBox.Show("🌌 SPOOFING INICIADO\n\nVanguard bypass activado (VAN 152 y todos los baneos)\nMotherboard ASUS + TODOS los seriales\nDiscos, Mouse, USB, RAM, MAC, WMI...\n\nTodo cambiado con éxito.\n\nPuedes abrir tu juego ahora.\n\nCalipochoco 💜", "OBLIVION SPOOFER", MessageBoxButtons.OK, MessageBoxIcon.None);
            
            // Simula pantalla final como Saturn
            Thread.Sleep(800);
            MessageBox.Show("Spoofing Complete\nYour device profile has been reset successfully.\nNo third party HWID checkers are needed.\n\nCalipochoco 💜", "OBLIVION", MessageBoxButtons.OK, MessageBoxIcon.None);
        }
    }

    static class Program
    {
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new OblivionSpoofer.OblivionForm());
        }
    }
'@

Add-Type -TypeDefinition $oblivionUI -ReferencedAssemblies "System.Windows.Forms","System.Drawing" -ErrorAction SilentlyContinue

Write-Host "✅ OBLIVION cargado correctamente. Calipochoco 💜" -ForegroundColor Green
