﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            
            LblMsg.Text = "Welcome to ASP.NEt";
            LblMsg.Text += "<br/> User Name:" + TxtName.Text;
            LblMsg.Text += "<br/> User Password:" + TxtPwd.Text;
           

        }

        protected void TxtPwd_TextChanged(object sender, EventArgs e)
        {

        }
    }
}