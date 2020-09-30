using System;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Web.DynamicData;
using System.Web.Security;
using System.Web.UI;
using Microsoft.Web.DynamicData;
using YASA_PL;

public partial class FileImage_Edit : FieldTemplateUserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {

        SetUpValidator(RequiredFieldValidator1);
        SetUpValidator(CustomValidator1);
    }


    protected override void OnDataBinding(EventArgs e)
    {
        base.OnDataBinding(e);

        //check if field has a value
        if (FieldValue == null)
            return;

        // when there is already a value in the FieldValue
        // then show the icon and label/hyperlink
        PlaceHolder1.Visible = true;

        // get the file extension
        String extension = FieldValueString.Substring(
            FieldValueString.LastIndexOf(".") + 1,
            FieldValueString.Length - (FieldValueString.LastIndexOf(".") + 1));

        // get attributes
        var fileUploadAttributes = MetadataAttributes.OfType<FileUploadAttribute>().FirstOrDefault();
        String fileUrl = fileUploadAttributes.FileUrl;
        String displayImageUrl = fileUploadAttributes.DisplayImageUrl;
        String displayImageType = fileUploadAttributes.DisplayImageType;
        String filePath;

        // check the file exists else throw validation error
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

    protected override void ExtractValues(IOrderedDictionary dictionary)
    {

        // get attributes
        var fileUploadAttributes = MetadataAttributes.OfType<FileUploadAttribute>().FirstOrDefault();

        String fileUrl;
        String[] extensions;
        if (fileUploadAttributes != null)
        {
            fileUrl = fileUploadAttributes.FileUrl;
            extensions = fileUploadAttributes.FileTypes;

            if (FileUpload1.HasFile)
            {
                // get the files folder
                String filesDir = fileUrl.Substring(0, fileUrl.LastIndexOf("/") + 1);

                // resolve full path c:\... etc
                String path = Server.MapPath(filesDir);

                // get files extension without the dot
                String fileExtension = FileUpload1.FileName.Substring(
                    FileUpload1.FileName.LastIndexOf(".") + 1).ToLower();


                // Get the name of the file to upload.
                string fileName = FileUpload1.FileName;
                // Create the path and file name to check for duplicates.
                string pathToCheck = path + "\\" + FileUpload1.FileName;
                // Create a temporary file name to use for checking duplicates.
                string tempfileName = "";

                // Check to see if a file already exists with the
                // same name as the file to upload.        
                if (System.IO.File.Exists(pathToCheck))
                {
                    int counter = 2;
                    while (System.IO.File.Exists(pathToCheck))
                    {
                        // if a file with this name already exists,
                        // prefix the filename with a number.
                        tempfileName = "Copy_No_" + counter.ToString() + "_of_" + FileUpload1.FileName;
                        pathToCheck = path + "\\" + tempfileName;
                        counter++;
                    }

                    fileName = tempfileName;


                }
                // try to upload the file showing error if it fails
                try
                {
                    FileUpload1.PostedFile.SaveAs(path + "\\" + fileName);
                    dictionary[Column.Name] = fileName;
                }
                catch (Exception ex)
                {
                
                    CustomValidator1.IsValid = false;
                   CustomValidator1.ErrorMessage = ex.Message;
                  
                }

            }
        }
    }



}