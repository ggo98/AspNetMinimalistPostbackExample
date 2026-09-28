using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetMinimalistPostbackExample
{
    public partial class Default : System.Web.UI.Page
    {
        private static Dictionary<string, StateBag> _mapGuidToViewState = new Dictionary<string, StateBag>();

        private static StateBag GetViewState(string guid)
        {
            StateBag ret;
            if (!_mapGuidToViewState.TryGetValue(guid, out ret))
                ret = null;
            return ret;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            if (IsPostBack)
            {
                //Response.Write("postback"); "breaks postbacks"!
            }
            else
            {
                Response.Write("NOT postback<hr/>");
                var guidStr = Guid.NewGuid().ToString();
                _mapGuidToViewState[guidStr] = ViewState;
                LabelPageGUID.Text = guidStr.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "clicked: " + DateTime.Now.ToString("HH:mm:ss.fff");
            string newValue = (int.Parse("0" + TextBox1.Text) + 1).ToString();
            TextBox1.Text = newValue;
            StateBag viewState = GetViewState(LabelPageGUID.Text);
            TextBox2.Text = (viewState["last"] ?? string.Empty).ToString();
            viewState["last"] = newValue;
        }

        public override void Dispose()
        {
            base.Dispose();
        }
    }
}