using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        divPageMessage.Visible = false;
        
    }


    protected void csvAge_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        string strAge = txtAge.Text;
        int intAge = 0;

        try
        {
            intAge = System.Convert.ToInt32(strAge);
        }
        catch (Exception)
        {

            e.IsValid = false;
            return;
        }

        if ((intAge>=8)==false)
        {
            e.IsValid = false;
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string strInformationMessage =
                "Your Information Updateed Successfully.";

            DisplayInformationMessage(strInformationMessage);
        }
    }

    private void DisplayInformationMessage(string message)
    {
        divPageMessage.Visible = true;
        litPageMessage.Text =
            string.Format("<div class 'error'>{0}</div>",message);
    }
}