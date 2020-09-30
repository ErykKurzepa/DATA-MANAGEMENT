using System;
using System.IO;
using System.Linq;
using System.Web.DynamicData;
using System.Web.Security;
using System.Web.UI;
using Microsoft.Web.DynamicData;
using YASA_PL;

public partial class FileImage : FieldTemplateUserControl
{


    protected override void OnDataBinding(EventArgs e)
    {
        base.OnDataBinding(e);

        //check if field has a value
        if (FieldValue == null)
            return;

        // get the file extension
        String extension = FieldValueString.Substring(
            FieldValueString.LastIndexOf(".") + 1,
            FieldValueString.Length - (FieldValueString.LastIndexOf(".") + 1));

        // get attributes
        var fileUploadAttributes = MetadataAttributes.OfType<FileUploadAttribute>().FirstOrDefault();
        String fileUrl = fileUploadAttributes.FileUrl;
        String displayImageUrl = fileUploadAttributes.DisplayImageUrl;
        String displayImageType = fileUploadAttributes.DisplayImageType;


        // check the file exists else throw validation error
        String filePath;
        if (fileUploadAttributes != null)
            filePath = String.Format(fileUrl, FieldValueString);
        else
            // if attribute not set use default
            filePath = String.Format("~/files/{0}", FieldValueString);


        // if either hyperlinks are disabled or the
        // file does not exist then hide the link
        if (fileUploadAttributes.DisableHyperlink | !File.Exists(Server.MapPath(filePath)))
        {
            Label1.Text = FieldValueString;
            HyperLink1.Visible = false;
        }
        else
        {
            Label1.Visible = false;
            HyperLink1.Text = FieldValueString;
            HyperLink1.NavigateUrl = filePath;
        }


        // check file exists on file system
        if (!File.Exists(Server.MapPath(filePath)))
        {
            CustomValidator1.ErrorMessage = String.Format("{0} - plik nie istnieje", FieldValueString);
            CustomValidator1.IsValid = false;
        }

    }
}