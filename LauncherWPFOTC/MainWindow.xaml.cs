﻿using LauncherWPFOTC.Classes;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Input;

namespace LauncherWPFOTC
{
    // code por Savio Macedo.
    public partial class MainWindow : Window
    {
        //Instanciando Classes.
        Noticia noticias = new Noticia();
        GitHub github = new GitHub();
        Config config = new Config();
        //Declarando Variaveis.
        private Personalizacao personaliza;
        private bool flag = false;

        public MainWindow()
        {
            InitializeComponent();
            //Sistema de Personalizacao.
            personaliza = new Personalizacao
            {
                urlbackground = AppDomain.CurrentDomain.BaseDirectory + "imagens/" + config.Background,
                urlfechar = AppDomain.CurrentDomain.BaseDirectory + "imagens/" + config.BtnFechar,
                urlminimize = AppDomain.CurrentDomain.BaseDirectory + "imagens/" + config.BtnMinimizar,
                cor = config.EsquemaCor
            };
            this.DataContext = personaliza;
            //Aciona a movimentação do launcher com o mouse.
            MouseDown += Windows_MouseDown;
        }

        //Função que realiza a movimentação do Launcher com o mouse.
        private void Windows_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                DragMove();
        }

        private void Window_Initialized(object sender, EventArgs e)
        {
            //Seta Titulo do Launcher.
            label2.Content = Janela.Title + config.NomeOT;
            //Seta configuração do OTC.
            if (config.OTClient == true)
                comboBox.Visibility = Visibility.Visible;
            //Seta navegação da webview(noticasarea).
            noticiasArea.Navigate(noticias.getNoticia());
        }
        //Função de acionamento do botão jogar.
        private void btnJogar_Click(object sender, RoutedEventArgs e)
        {
            if (!flag)
            {
                btnJogar.IsEnabled = false;
                Janela.Cursor = Cursors.Wait;
                BackgroundWorker worker = new BackgroundWorker();
                worker.RunWorkerCompleted += worker_RunWorkerCompleted;
                worker.WorkerReportsProgress = true;
                worker.DoWork += worker_DoWork;
                worker.ProgressChanged += worker_ProgressChanged;
                worker.RunWorkerAsync();
            }
            else
            {
                try
                {
                    if (config.OTClient)
                    {
                        if (comboBox.SelectedIndex == 1)
                            Process.Start(AppDomain.CurrentDomain.BaseDirectory + "cliente/opengl.exe");
                        else
                            Process.Start(AppDomain.CurrentDomain.BaseDirectory + "cliente/dx.exe");
                    }
                    else
                        Process.Start(AppDomain.CurrentDomain.BaseDirectory + "cliente/padrao.exe");
                    Close();
                }
                catch(Exception error)
                {
                    MessageBox.Show(error.Message);
                }
            }
        }

        private void worker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            barraProgresso.Value = e.ProgressPercentage;
            label.Content = (string)e.UserState;
        }

        private void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            var worker = sender as BackgroundWorker;
            github.initGit(worker);
        }

        private void worker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            //Liberação do botão jogar.
            Janela.Cursor = Cursors.Arrow;
            btnJogar.IsEnabled = true;
            MessageBox.Show("Atualizado!!!");
            flag = true;
            btnJogar.Content = "JOGAR!";
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
