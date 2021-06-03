using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Test2Code;

namespace Test2Project
{
    /*
     * You should finish the follow tests.
     * 1.Test the IsLeapYear method in the Validation class.
     * 2.Test the LastDayOfMonth method in the Validation class.
     * 3.Test the ValidDate method in the Validation class.
     * 4.Test the IncrementDate method in the Validation class.
     */

    [TestClass]
    public class UnitTest2
    {
        [TestMethod]

        //ValidDate

        public void Check_ValidDate_ReturnsTrue()
        {
            // Arrange 
            Day today = new Day();
            today.Year = 2012;
            today.Month = 6;
            today.Date = 22;

            bool expected = true;

            // Act 
            bool actual = Validation.ValidDate(today);

            // Assert
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Check_ValidDate_ReturnFalse()
        {
            // Arrange 
            Day invDay = new Day();
            invDay.Year = 12;
            invDay.Month = 13;
            invDay.Date = 0;

            // Act 
            bool actual = Validation.ValidDate(invDay);

            // Assert
            Assert.IsFalse(actual);
        }

        //LastDayOfMonth

        [TestMethod]
        public void Check_LastDayOfMonth_ReturnEqual()
        {
            // Arrange 
            Day day = new Day();
            day.Year = 2012;
            day.Month = 8;

            // Act 
            int actual = Validation.LastDayOfMonth(day.Year, day.Month);

            // Assert
            Assert.AreEqual(actual, 31);
        }

        [TestMethod]
        public void Check_LastDayOfMonth_ReturnFalse()
        {
            // Arrange 
            Day day = new Day();
            day.Year = 12;
            day.Month = 13;

            // Act 
            int actual = Validation.LastDayOfMonth(day.Year, day.Month);

            // Assert
            Assert.AreEqual(actual, 0);
        }

        //IsLeapYear

        [TestMethod]
        public void Check_IsLeapYear_ReturnFalse()
        {
            // Arrange 
            Day day = new Day();
            day.Year = 2013;
            
            // Act 
            bool actual = Validation.IsLeapYear(day.Year);

            // Assert
            Assert.IsFalse(actual);
        }


        [TestMethod]
        public void Check_IsLeapYear_ReturnTrue()
        {
            // Arrange 
            Day day = new Day();
            day.Year = 2012;

            // Act 
            bool actual = Validation.IsLeapYear(day.Year);

            // Assert
            Assert.AreEqual(actual, true);
        }

        //IncrementDate

        [TestMethod]
        public void Check_IncrementDate_ReturnNextDay()
        {
            // Arrange 
            Day day = new Day();
            day.Year = 2013;
            day.Month = 6;
            day.Date = 15;

            // Act 
            DateTime actual = Validation.IncrementDate(day);

            // Assert
            Assert.AreEqual(actual.Day, 16);
        } 
    }
}