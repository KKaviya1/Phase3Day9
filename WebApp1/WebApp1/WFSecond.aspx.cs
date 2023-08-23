using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class WFSecond : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            LblMsg.Text += "Pre Init Text";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                LblMsg.Text += "Page load and page is not postback yet first time ";
            }
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            LblMsg.Text += "Page PreRender Text";
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblMsg.Text += "<br> I am Button Click event";
        }
    }
}