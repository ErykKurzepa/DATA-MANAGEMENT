using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FileUploadAttribute
/// </summary>
[AttributeUsage(AttributeTargets.Property, AllowMultiple = false)]
public sealed class FileUploadAttribute : Attribute
{
    /// <summary>
    /// where to save files
    /// </summary>
    public String FileUrl { get; set; }

    /// <summary>
    /// File type to allow upload
    /// </summary>
    public String[] FileTypes { get; set; }

    /// <summary>
    /// image type to use for displaying file icon
    /// </summary>
    public String DisplayImageType { get; set; }

    /// <summary>
    /// where to find file type icons
    /// </summary>
    public String DisplayImageUrl { get; set; }

    /// <summary>
    /// If present user must be a member of one
    /// of the roles to be able to download file
    /// </summary>
    public String[] HyperlinkRoles { get; set; }

    /// <summary>
    /// Used to Disable Hyperlink (Enabled by default)
    /// </summary>
    public Boolean DisableHyperlink { get; set; }

}