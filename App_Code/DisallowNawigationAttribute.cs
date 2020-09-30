using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;


    /// <summary>
    /// Summary description for DisallowNawigation
    /// </summary>

        [AttributeUsage(AttributeTargets.Property)]
        public class DisallowNavigationAttribute : Attribute
        {
            public Boolean Hide { get; private set; }

            /// <summary>
            /// Initializes a new instance of the <see cref="DisallowNavigationAttribute"/> class.
            /// </summary>
            public DisallowNavigationAttribute()
            {
                Hide = false;
            }

            public DisallowNavigationAttribute(Boolean show)
            {
                Hide = show;
            }


          

        }



