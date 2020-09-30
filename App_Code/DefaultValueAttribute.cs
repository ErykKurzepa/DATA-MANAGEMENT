using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.DynamicData;


    [AttributeUsage(AttributeTargets.Property)]
    public class DefaultValueAttribute : System.Attribute
    {
        // As implemented, this identifier is merely the Type of the attribute.
        // However, it is intended that the unique identifier be used to identify 
        // two attributes of the same type.
        public override object TypeId { get { return this; } }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="value">String</param>
        public DefaultValueAttribute(String value)
        {
            this._value = value;
        }

        private String _value;
        public String Value
        {
            get { return this._value; }
        }
    }



