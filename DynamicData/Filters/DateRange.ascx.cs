﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Linq.Expressions;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
//using NotAClue.Web;
//using NotAClue.Web.DynamicData;
using System.Globalization;

namespace CustomFilters
{
    public partial class DateRangeFilter : System.Web.DynamicData.QueryableFilterUserControl
    {
        private String DATE_FORMAT = CultureInfo.CurrentCulture.DateTimeFormat.ShortDatePattern;

        public string DateFrom
        {
            get { return txbDateFrom.Text; }
        }

        public string DateTo
        {
            get { return txbDateTo.Text; }
        }

        public override Control FilterControl
        {
            get { return txbDateFrom; }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            // set correct date time format
           // txbDateFrom_CalendarExtender.Format = DATE_FORMAT;
           // txbDateTo_CalendarExtender.Format = DATE_FORMAT;

            if (!Column.ColumnType.Equals(typeof(DateTime)))
                throw new InvalidOperationException(String.Format("A date range filter was loaded for column '{0}' but the column has an incompatible type '{1}'.",
                    Column.Name, Column.ColumnType));
        }


        public override IQueryable GetQueryable(IQueryable source)
        {
            if (String.IsNullOrEmpty(DateFrom) || String.IsNullOrEmpty(DateTo))
                return source;

            ParameterExpression parameterExpression = Expression.Parameter(source.ElementType, "item");
            Expression body = BuildQueryBody(parameterExpression);

            LambdaExpression lambda = Expression.Lambda(body, parameterExpression);
            MethodCallExpression whereCall = Expression.Call(typeof(Queryable), "Where", new Type[] { source.ElementType }, source.Expression, Expression.Quote(lambda));
            return source.Provider.CreateQuery(whereCall);
        }

        private Expression BuildQueryBody(ParameterExpression parameterExpression)
        {
            Expression propertyExpression = ExpressionHelper.GetValue(ExpressionHelper.CreatePropertyExpression(parameterExpression, Column.Name));
            TypeConverter converter = TypeDescriptor.GetConverter(Column.ColumnType);
            BinaryExpression minimumComparison = BuildCompareExpression(propertyExpression, converter.ConvertFromString(DateFrom), Expression.GreaterThanOrEqual);
            BinaryExpression maximumComparison = BuildCompareExpression(propertyExpression, converter.ConvertFromString(DateTo), Expression.LessThanOrEqual);
            return Expression.AndAlso(minimumComparison, maximumComparison);
        }

        private BinaryExpression BuildCompareExpression(Expression propertyExpression, object value, Func<Expression, Expression, BinaryExpression> comparisonFunction)
        {
            ConstantExpression valueExpression = Expression.Constant(value);
            BinaryExpression comparison = comparisonFunction(propertyExpression, valueExpression);
            return comparison;
        }

        //protected void btnRangeButton_Click(object sender, EventArgs e)
        //{
        //    var button = (Button)sender;
        //    if (button.ID == btnClear.ID)
        //    {
        //        txbDateFrom.Text = String.Empty;
        //        txbDateTo.Text = String.Empty;
        //    }
        //    OnFilterChanged();
        //}
        protected void txbDateTo_TextChanged(object sender, EventArgs e)
        {
            OnFilterChanged();
        }
}
}
