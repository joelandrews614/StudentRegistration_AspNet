using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
    public partial class StudentRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            AddDOB();

        }

        protected void AddDOB() {
            
            for (int i = 1; i <= 31; i++) {
                ddlDay.Items.Add(i.ToString());
            }

            for (int i = 1; i <= 12; i++) {
                ddlMonth.Items.Add(i.ToString());
            }

            for (int i = 1980; i <= 2020; i++) {
                ddlYear.Items.Add(i.ToString());
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCandidateName.Text = "";
            txtFather.Text = "";
            txtPercentage.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";

            lblResult1.Visible = false; 
            lblResult2.Visible = false;
            lblResult3.Visible = false;
            lblResult4.Visible = false;
            lblResult5.Visible = false;
            lblResult6.Visible = false;
            lblResult7.Visible = false;
            lblResult8.Visible = false;
            lblResult9.Visible = false;
            lblResult10.Visible = false;
            lblResult11.Visible = false;

            lblCandidate.Visible = false;
            lblFather.Visible = false;
            lblDay.Visible = false;
            lblMonth.Visible = false;
            lblYear.Visible = false;
            lblAddress.Visible = false;
            lblEmail.Visible = false;
            lblGender.Visible = false;
            lblPhone.Visible = false;
            lblYearOf.Visible = false;
            lblUGDegree.Visible = false;
            lblExamCity.Visible = false;
            lblPercentage.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            lblResult1.Visible = true;
            lblResult2.Visible = true; 
            lblResult3.Visible = true;
            lblResult4.Visible = true;
            lblResult5.Visible = true;
            lblResult6.Visible = true;
            lblResult7.Visible = true;
            lblResult8.Visible = true;
            lblResult9.Visible = true;
            lblResult10.Visible = true;
            lblResult11.Visible = true;

            lblCandidate.Visible = true;
            lblFather.Visible = true;
            lblDay.Visible = true;
            lblMonth.Visible = true;
            lblYear.Visible = true;
            lblAddress.Visible = true; 
            lblEmail.Visible = true;
            lblGender.Visible = true; 
            lblPhone.Visible = true;
            lblYearOf.Visible = true;
            lblUGDegree.Visible = true;
            lblExamCity.Visible = true;
            lblPercentage.Visible = true;

            lblCandidate.Text = txtCandidateName.Text;
            lblFather.Text = txtFather.Text;
            
            lblDay.Text = ddlDay.SelectedValue;
            lblMonth.Text = ddlMonth.SelectedValue;
            lblYear.Text = ddlYear.SelectedValue;

            if (rbFemale.Checked) {
                lblGender.Text = rbFemale.Text;
            } else if (rbMale.Checked) {
                lblGender.Text = rbMale.Text;
            } else if (rbOthers.Checked) { 
                lblGender.Text = rbOthers.Text;
            }

            lblUGDegree.Text = ddlUGDegree.SelectedValue;
            lblPercentage.Text = txtPercentage.Text;
            lblYearOf.Text = ddlYearofCompletion.SelectedValue;
            lblExamCity.Text = ddlExamCity.SelectedValue;

            lblEmail.Text = txtEmail.Text;
            lblPhone.Text = txtPhone.Text;
            lblAddress.Text = txtAddress.Text;
        }
    }
}