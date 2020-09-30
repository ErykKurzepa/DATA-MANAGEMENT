using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using System.ComponentModel;

namespace DistiPromo.Helpers
{
    public static class ControlExtensions
    {

        /// <summary> 
        /// This will find the Dynamic Data control for the specified column (name from Entity model) 
        /// </summary> 
        /// <param name="control">the control (such as FormView or UserControl) that directly contains the control you are looking for</param> 
        /// <param name="columnName">the name of the column (from the Entity Model) that you are looking for</param> 
        /// <returns>The DynamicData Control for the column that you are looking for</returns> 
        public static Control FindFieldTemplateHelper(this Control control, string columnName)
        {
            // code copied from internal method: System.Web.DynamicData.DynamicControl.GetControlIDFromColumnName 
            // Since it is internal, it could change, but I needed to get to it 
            return control.FindControl("__" + columnName);
        }


        public static Control FindControlRecursive(this Control Root, string Id)
        {
            if (Root.ClientID.IndexOf(Id) > 0)
                return Root;


            foreach (Control Ctl in Root.Controls)
            {
                Control FoundCtl = FindControlRecursive(Ctl, Id);


                if (FoundCtl != null)
                    return FoundCtl;
            }
            return null;
        }



        public static FieldTemplateUserControl FindFieldTemplateUserControl(this Control control, string columnName)
        {
            var userControl = ((FieldTemplateUserControl)(control.FindFieldTemplate(columnName)));
            if (userControl == null) throw new Exception("Could not find FieldTemplate in Control for " + columnName);
            return userControl;
        }

        public static Control FindControlForColumn(this Control control1, string columnName)
        {
            var control = FindFieldTemplateUserControl(control1, columnName).DataControl;
            if (control == null) throw new Exception("Could not find control in Control for " + columnName);
            return control;
        }

        public static T FindControlForColumn<T>(this Control control, string columnName) where T : Control
        {
            return FindControlForColumn(control, columnName) as T;
        }

        public static object GetValueForColumn(this Control control, string columnName)
        {
            var actualControl = FindFieldTemplateUserControl(control, columnName).DataControl;
            return GetValue(control, actualControl);
        }

        public static T GetValue<T>(this Control control, string columnName)
        {
            object rawVal = GetValueForColumn(control, columnName);
            //return (T)Convert.ChangeType(rawVal, typeof(T));

            // this is a little better because it handles nullable types also 
            return (T)TypeDescriptor.GetConverter(typeof(T)).ConvertFrom(rawVal);
        }

        public static T GetValue<T>(this Control control1, Control control)
        {
            object rawVal = GetValue(control1, control);
            //return (T)Convert.ChangeType(rawVal, typeof(T));

            // this is a little better because it handles nullable types also 
            return (T)TypeDescriptor.GetConverter(typeof(T)).ConvertFrom(rawVal);
        }

        public static object GetValue(this Control control, Control actualControl)
        {
            if (actualControl is ITextControl)
            {
                return (actualControl as ITextControl).Text;
            }
            else if (actualControl is ICheckBoxControl)
            {
                return (actualControl as ICheckBoxControl).Checked;
            }
            else if (actualControl is ListControl)
            {
                return (actualControl as ListControl).SelectedValue;
            }
            else if (actualControl is HiddenField)
            {
                return (actualControl as HiddenField).Value;
            }
            else throw new Exception("Could not get value of unknown control type: " + actualControl.GetType().ToString());

        }

        public static void SetValue(this Control control, string columnName, object value)
        {
            Control actualControl = FindControlForColumn(control, columnName);
            SetValue(control, actualControl, value);
        }

        public static void SetValue(this Control control, Control actualControl, object value)
        {

            if (actualControl is ITextControl)
            {
                (actualControl as ITextControl).Text = Convert.ToString(value);
            }
            else if (actualControl is ICheckBoxControl)
            {
                (actualControl as ICheckBoxControl).Checked = Convert.ToBoolean(value);
            }
            else if (actualControl is ListControl)
            {
                (actualControl as ListControl).SelectedValue = Convert.ToString(value);
            }
            else if (actualControl is HiddenField)
            {
                (actualControl as HiddenField).Value = Convert.ToString(value);
            }
            else throw new Exception("Could not set value of unknown control type: " + actualControl.GetType().ToString());
        }
    }
}