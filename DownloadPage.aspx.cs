using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DownloadPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendButton_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        var email = MailTextBox.Text;
        SendLink(email);
    }

    protected void SendLink(string email)
    {
        using (SalaNivaEntities db = new SalaNivaEntities())
        {
            db.Database.Connection.ConnectionString = "data source=funkymonk.database.windows.net;initial catalog=SalaNiva;persist security info=True;user id=Stergianos;password=FunkyMonks13;MultipleActiveResultSets=True;App=EntityFramework&quot;";

            var check = db.emails.Where(x => x.email == email);
            if (check.Any())
            {
                foreach (var c in check)
                {
                    c.counter++;
                }
            }
            else
            {

                emails m = new emails();
                m.email = email;
                m.counter = 1;
                db.emails.Add(m);
            }
            db.SaveChanges();
        }
    }
}