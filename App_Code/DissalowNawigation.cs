using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

/// <summary>
/// Summary description for DissalowNawigation
/// </summary>
public static class DissalowNawigation
{

            /// Get the attribute or a default instance of the attribute
            /// if the Column attribute do not contain the attribute
            /// </summary>
            /// <typeparam name="T">Attribute type</typeparam>
            /// <param name="table">Column to search for the attribute on.</param>
            /// <returns>The found attribute or a default instance of the attribute of type T</returns>
            public static T GetAttributeOrDefault<T>(this MetaColumn column) where T : Attribute, new()
            {
                return column.Attributes.OfType<T>().DefaultIfEmpty(new T()).FirstOrDefault();
            }
	
}