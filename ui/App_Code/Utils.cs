/// <summary>
/// Summary description for Utils
/// </summary>
public static class Utils
{
    public const string EmptyUrl = "Images/NoImage.jpg";

    public static string GetFullImageUrl(string directory, string itemId)
    {
        if (!string.IsNullOrEmpty(itemId))
        {
            if (!string.IsNullOrEmpty(directory))
            {
                return string.Format("Images/ImageData/{0}/{1}.jpg", directory, itemId);
            }
        }
        return EmptyUrl;
    }

    public static string GetSmallImageUrl(string directory, string itemId)
    {
        if (!string.IsNullOrEmpty(itemId))
        {
            if (!string.IsNullOrEmpty(directory))
            {
                return string.Format("Images/ImageData/{0}/{1}_small.jpg", directory, itemId);
            }
        }
        return EmptyUrl;
    }
}