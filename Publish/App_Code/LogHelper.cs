using Microsoft.Practices.EnterpriseLibrary.Data;

/// <summary>
/// Класс для обработки ошибок
/// </summary>
public class LogHelper
{
    /// <summary>
    /// Добавление записи в журнал ошибок
    /// </summary>
    /// <param name="operation">Операция</param>
    /// <param name="message">Сообщение</param>
    /// <param name="stack">Стек ошибки</param>
    /// <param name="userAccount">Учетная запись пользователя</param>
    public static void AddError(string operation, string message, string stack, string userAccount)
    {
        try
        {
            Database db = DatabaseFactory.CreateDatabase();
            db.ExecuteNonQuery("ADD_ERROR", operation, message, stack, userAccount);
        }
        catch
        {
        }
    }

    /// <summary>
    /// Добавление записи в журнал безопасности
    /// </summary>
    /// <param name="message">Сообщение</param>
    /// <param name="userAccount">Учетная запись</param>
    public static void AddSecurityMessage(string message, string userAccount)
    {
        try
        {
            Database db = DatabaseFactory.CreateDatabase();
            db.ExecuteNonQuery("ADD_SECURITY_MESSAGE", message, userAccount);
        }
        catch
        {
        }
    }

    /// <summary>
    /// Добавление информации в таблицу статистики посещений
    /// </summary>
    /// <param name="userAccount">Учетная запись</param>
    /// <param name="page">Просматриваемая страница</param>
    /// <param name="id">Идентификатор заявки</param>
    public static void AddLoginStatistics(string userAccount, string page, string id)
    {
        try
        {
            Database db = DatabaseFactory.CreateDatabase();
            db.ExecuteNonQuery("ADD_USER_LOGIN_STATISTICS", userAccount, page, id ?? string.Empty);
        }
        catch
        {
        }
    }
}
