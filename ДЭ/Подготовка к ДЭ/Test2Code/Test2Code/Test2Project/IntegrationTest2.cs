using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Test2Code;

namespace Test2Project
{
    /*
     * You should finish the Integration test
     */

    [TestClass]
    public class IntegrationTest2
    {
        [TestMethod]
        public void Check_Validation_ReturnNextDay()
        {
            Day day = new Day();
            day.Year = 2016;
            day.Month = 8;
            day.Date = 1;

            bool actualValidDate;
            int atcualLastDayOfMonth;
            //bool actualIsLeapYear;
            DateTime actualDay;

            //ValidDate
            actualValidDate = Validation.ValidDate(day);
            if(actualValidDate)
            {
                atcualLastDayOfMonth = Validation.LastDayOfMonth(day.Year, day.Month);

                if (atcualLastDayOfMonth == 31)
                {
                    //actualIsLeapYear = Validation.IsLeapYear(day.Year);
                    actualDay = Validation.IncrementDate(day);
                    Assert.AreEqual(actualDay.Day, 2);
                }
                else
                {
                    Assert.IsTrue(false);
                }
            }
            else
            {
                Assert.IsTrue(false);
            }
        }
    }
}
