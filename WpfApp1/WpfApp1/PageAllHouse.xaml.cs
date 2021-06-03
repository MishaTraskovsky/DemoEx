﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ListSortDirection = System.ComponentModel.ListSortDirection;
using SortDescription = System.ComponentModel.SortDescription;


namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для PageAllHouse.xaml
    /// </summary>
    public partial class PageAllHouse : Page
    {
        public PageAllHouse()
        {
            InitializeComponent();
            DGreedRC.ItemsSource = Entities.GetContext().ResidentialComplex.ToList();
            DGreedRC.Items.SortDescriptions.Add(new SortDescription("City", ListSortDirection.Descending));
            CbCities.ItemsSource = Entities.GetContext().ResidentialComplex.Select(q => q.City).Distinct().ToList();
        }


        private void CbCities_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DGreedRC.ItemsSource = Entities.GetContext().ResidentialComplex.Where(q => q.City == CbCities.SelectedItem.ToString()).ToString();
        }
    }
}
