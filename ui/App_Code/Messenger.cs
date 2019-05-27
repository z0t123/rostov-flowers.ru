using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;
using Entities;

/// <summary>
/// Класс для рассылки сообщений по электронной почте
/// </summary>
public class Messenger
{
    #region Переменные и константы

    /// <summary>
    /// Заголовок письма
    /// </summary>
    private string _header;

    /// <summary>
    /// Тело письма
    /// </summary>
    private string _body;

    /// <summary>
    /// Основной текст письма
    /// </summary>
    private string _text;

    /// <summary>
    /// Адрес электронной почты получателя
    /// </summary>
    private string _email;

    /// <summary>
    /// Адрес электронной почты получателя копии
    /// </summary>
    private string _copy_email;

    /// <summary>
    /// Адрес электронной почты получателя скрытой копиии
    /// </summary>
    private string _hidden_email;

    /// <summary>
    /// Формат письма
    /// </summary>
    private bool _isBodyHTML = true;

    #region Параметры для соединения с сервером

    private string _serverAddress;
    private int _serverPort;
    private string _responseEmail;
    private string _responseName;
    private string _serverLogin;
    private string _serverPassword;
    private bool _useLogin;
    
    #endregion

    #endregion

    #region Свойства

    /// <summary>
    /// Список вложений
    /// </summary>
    public List<string> AttachmentsList { get; set; }

    /// <summary>
    /// Формат письма
    /// </summary>
    public bool IsBodyHTML
    {
        get
        {
            return _isBodyHTML;
        }

        set
        {
            _isBodyHTML = value;
        }
    }

    #endregion

    #region Конструктор
    
    /// <summary>
    /// Конструктор
    /// </summary>
    /// <param name="header">Тема письма</param>
    /// <param name="email">Адрес получателя</param>
    /// <param name="copy_email">Адрес получателя копии</param>
    /// <param name="text">Тело письма</param>
    public Messenger(string header, string email, string copy_email, string text)
	{
        _header = header;
        _text = text;
        _email = email;
        _copy_email = copy_email;
        _hidden_email = string.Empty;
        Initialize();
    }

    /// <summary>
    /// Конструктор
    /// </summary>
    /// <param name="header">Тема письма</param>
    /// <param name="email">Адрес получателя</param>
    /// <param name="copy_email">Адрес получателя копии</param>
    /// <param name="hidden_copy">Адрес получателя скрытой копии</param>
    /// <param name="text">Тело письма</param>
    /// <param name="isSD">Признак того, что письмо отправялется в ServiceDesk</param>
    public Messenger(string header, string email, string copy_email, string hidden_copy, string text)
    {
        _header = header;
        _text = text;
        _email = email;
        _copy_email = copy_email;
        _hidden_email = hidden_copy;
        Initialize();
    }

    #endregion

    #region Функционал

    /// <summary>
    /// Отправка сообщения по электронной почте
    /// </summary>
    public void Send()
    {
        Send(_responseEmail, _responseName, MailPriority.Normal);
    }

    /// <summary>
    /// Отправка сообщения по электронной почте
    /// </summary>
    /// <param name="isHighPriority">Высокий приоритет</param>
    public void Send(bool isHighPriority)
    {
        Send(_responseEmail, _responseName, (isHighPriority) ? MailPriority.High : MailPriority.Normal);
    }

    /// <summary>
    /// Отправка сообщения по электронной почте
    /// </summary>
    /// <param name="senderEmail">Почта отправителя</param>
    /// <param name="senderName">Имя отправителя</param>
    /// <param name="priority">Приоритет</param>
    public void Send(string senderEmail, string senderName, MailPriority priority)
    {
        try
        {
            if (Settings.DoSendMail)
            {
                MailMessage mail = new MailMessage();
                MailAddress sender = new MailAddress(senderEmail, senderName);
                mail.Sender = sender;
                mail.ReplyTo = sender;
                mail.From = sender;

                foreach (string s in _email.Split(';'))
                    mail.To.Add(s);

                if (_copy_email.Trim().Length > 0)
                    foreach (string s in _copy_email.Split(';'))
                        mail.CC.Add(s);

                if (_hidden_email.Trim().Length > 0)
                    foreach (string s in _hidden_email.Split(';'))
                        mail.Bcc.Add(s);

                mail.Priority = priority;
                mail.Subject = _header;
                mail.IsBodyHtml = _isBodyHTML;

                mail.Body = _text;

                foreach (string attachmentPath in AttachmentsList)
                    mail.Attachments.Add(new Attachment(attachmentPath));

                SmtpClient smtp = new SmtpClient(_serverAddress, _serverPort);
                if (_useLogin)
                    smtp.Credentials = new NetworkCredential(_serverLogin, _serverPassword);
                smtp.Send(mail);
            }
        }
        catch (Exception ex)
        {
            LogHelper.AddError("Отправка почты", string.Format("От {0}, для {1}. {2}. Заголовок письма - '{3}'", senderEmail, _email, ex.Message, _header), ex.StackTrace, "System");
        }
    }


    /// <summary>
    /// Получение шаблона письма
    /// </summary>
    /// <param name="type">Состояние</param>
    /// <returns></returns>
    public static string GetMailTemplate(MailType type)
    {
        string result = string.Empty;
        string fileName = @"mail_templates\";

        switch (type)
        {
            case MailType.PaymentSuccess:
                fileName += "PaymentSuccess.txt";
                break;
        }

        fileName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);
        if (File.Exists(fileName))
            using (StreamReader sr = new StreamReader(fileName))
            {
                result = sr.ReadToEnd();
            }

        return result;
    }


    #endregion

    #region Приватные методы

    /// <summary>
    /// Инициализациия данных для отправки сообщений
    /// </summary>
    private void Initialize()
    {
        _serverAddress = ConfigurationManager.AppSettings.Get("ServerAddress");
        _serverPort = Convert.ToInt32(ConfigurationManager.AppSettings.Get("ServerPort"));
        _useLogin = (ConfigurationManager.AppSettings.Get("UseLogin") == "1");
        _responseEmail = ConfigurationManager.AppSettings.Get("ResponseEmail");
        _responseName = ConfigurationManager.AppSettings.Get("ResponseName");
        _serverLogin = ConfigurationManager.AppSettings.Get("ServerLogin");
        _serverPassword = ConfigurationManager.AppSettings.Get("ServerPassword");

        AttachmentsList = new List<string>();
    }

    #endregion
}
