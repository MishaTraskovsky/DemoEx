﻿#pragma checksum "..\..\teamDetail.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "96F90BF285F0104927B3A9448F6D787FA9832065093D8533A657A62D977E22E2"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using NBAManagement;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace NBAManagement {
    
    
    /// <summary>
    /// teamDetail
    /// </summary>
    public partial class teamDetail : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 41 "..\..\teamDetail.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtSecondHead;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\teamDetail.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnRoster;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\teamDetail.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnMtchUp;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\teamDetail.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnLnUp;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\teamDetail.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dGreedDetail;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/NBAManagement;component/teamdetail.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\teamDetail.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.txtSecondHead = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.btnRoster = ((System.Windows.Controls.Button)(target));
            
            #line 44 "..\..\teamDetail.xaml"
            this.btnRoster.Click += new System.Windows.RoutedEventHandler(this.btnRoster_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.btnMtchUp = ((System.Windows.Controls.Button)(target));
            
            #line 45 "..\..\teamDetail.xaml"
            this.btnMtchUp.Click += new System.Windows.RoutedEventHandler(this.btnMtchUp_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnLnUp = ((System.Windows.Controls.Button)(target));
            
            #line 46 "..\..\teamDetail.xaml"
            this.btnLnUp.Click += new System.Windows.RoutedEventHandler(this.btnLnUp_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.dGreedDetail = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

