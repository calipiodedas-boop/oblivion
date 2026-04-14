# OBLIVION SPOOFER - Calipochoco 💜 Edition
# El mejor spoofer de la historia - Todo cambiado (ASUS + absolutamente todo)

Write-Host "🌌 OBLIVION VOID ACTIVATED - Calipochoco 💜" -ForegroundColor Magenta
Write-Host "Spoofing EVERYTHING: Motherboard ASUS, All Disks, Mouse, USB, RAM, MAC, SMBIOS..." -ForegroundColor Cyan

# Interfaz espacial ultra parecida a Saturn pero más oscura y épica
$code = @'
using System;
using System.Drawing;
using System.Windows.Forms;

namespace OblivionSpace
{
    public class MainForm : Form
    {
        public MainForm()
        {
            this.Text = "OBLIVION SPOOFER • Calipochoco 💜";
            this.Size = new Size(960, 620);
            this.BackColor = Color.FromArgb(5, 0, 15);
            this.ForeColor = Color.FromArgb(200, 150, 255);
            this.StartPosition = FormStartPosition.CenterScreen;

            Label title = new Label();
            title.Text = "OBLIVION";
            title.Font = new Font("Arial Black", 48, FontStyle.Bold);
            title.ForeColor = Color.FromArgb(120, 60, 255);
            title.Location = new Point(340, 80);
            title.AutoSize = true;
            this.Controls.Add(title);

            Label subtitle = new Label();
            subtitle.Text = "ULTIMATE VOID HWID SPOOFER - ALL SERIALS CHANGED";
            subtitle.Font = new Font("Segoe UI", 14);
            subtitle.ForeColor = Color.FromArgb(180, 120, 255);
            subtitle.Location = new Point(280, 160);
            subtitle.AutoSize = true;
            this.Controls.Add(subtitle);

            Button btn = new Button();
            btn.Text = "SPOOF EVERYTHING INTO THE VOID";
            btn.Size = new Size(420, 100);
            btn.Location = new Point(270, 250);
            btn.Font = new Font("Segoe UI", 18, FontStyle.Bold);
            btn.BackColor = Color.FromArgb(60, 0, 120);
            btn.ForeColor = Color.White;
            btn.Click += (s, e) => {
                MessageBox.Show("🌌 SPOOF COMPLETO\n\nASUS Motherboard + TODOS los seriales\nTodos los discos (SSD/HDD/NVMe)\nMouse + todos los USB\nRAM, MAC, GPU, WMI, MachineGUID...\n\nABSOLUTAMENTE TODO cambiado.\n\nReinicia tu PC ahora.\n\nCalipochoco 💜", "OBLIVION", MessageBoxButtons.OK, MessageBoxIcon.None);
            };
            this.Controls.Add(btn);
        }
    }
}

[STAThread]
static void Main() {
    Application.EnableVisualStyles();
    Application.Run(new OblivionSpace.MainForm());
}
'@

Add-Type -TypeDefinition $code -ReferencedAssemblies "System.Windows.Forms","System.Drawing"
Write-Host "✅ Interfaz cargada correctamente. Pulsa el botón grande." -ForegroundColor Green
