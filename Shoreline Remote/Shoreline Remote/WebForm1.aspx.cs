using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shoreline_Remote
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnSave_Click(object sender, EventArgs e)
        {
            addOverviewToDatabase(radLandUseYes.Checked, radLandUseNo.Checked, radElectricalYes.Checked, radElectricalNo.Checked, radAffidavitYes.Checked, radAffidavitNo.Checked, radMowingYes.Checked, radMowingNo.Checked, txtPermit.Text, txtCove.Text, txtDockExp.Text, txtElectrical.Text, txtEexpiration.Text, txtEncroachment.Text, txtEType.Text, txtLandUse.Text, txtLexpiration.Text, txtLType.Text, txtMowing.Text, txtName.Text, txtWater.Text, txtWaterType.Text, txtWExpiration.Text, txtwORB.Text);
            addDockToDatabase(txtPermit.Text, radSundeckYes.Checked, radSundeckNo.Checked, radShorelineUsageYes.Checked, radShorelineUsageNo.Checked, radCoveredYes.Checked, radCoveredNo.Checked, radEnclosedYes.Checked, radEnclosedNo.Checked, txtDockType.Text, txtSize.Text, txtLastInspection.Text, txtNumOfSlips.Text, txtNotes.Text);
            addContactToDatabase(txtPermit.Text, txtState.Text, txtAltState.Text, txtAddress.Text, txtAltAddress.Text, txtCity.Text, txtAltCity.Text, txtZipCode.Text, txtAltZipCode.Text, txtPhone.Text, txtAltPhone.Text, txtEmail.Text, txtAltEmail.Text);

        }

        private void addContactToDatabase(string txtPermit, string txtstate, string txtAltState, string txtAddress, string txtAltAddress, string txtCity, string txtAltCity, string txtZipCode, string txtAltZipCode, string txtPhone, string txtAltPhone, string txtEmail, string txtAltEmail)
        {
            OleDbConnection conn;
            OleDbCommand cmd;

            using (conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                using (cmd = conn.CreateCommand())
                {
                    cmd.CommandText = "INSERT INTO Contact(Permit_Number, Address, Alternate_Address, City, Alternate_City, State, Alternate_State, Zip_Code, Alternate_Zip_Code, Phone, Alternate_Phone, Email, Alternate_Email) VALUES(@Permit_Number, @Address, @Alternate_Address, @City, @Alternate_City, @State, @Alternate_State, @Zip_Code, @Alternate_Zip_Code, @Phone, @Alternate_Phone, @Email, @Alternate_Email)";
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@Permit_Number", txtPermit);
                    cmd.Parameters.AddWithValue("@Address", txtAddress);
                    cmd.Parameters.AddWithValue("@Alternate_Address",txtAltAddress);
                    cmd.Parameters.AddWithValue("@City", txtCity);
                    cmd.Parameters.AddWithValue("@Alternate_City",txtAltCity);
                    cmd.Parameters.AddWithValue("@State",txtstate);
                    cmd.Parameters.AddWithValue("@Alternate_State",txtAltState);
                    cmd.Parameters.AddWithValue("@Zip_Code",txtZipCode);
                    cmd.Parameters.AddWithValue("@Alternate_Zip_Code",txtAltZipCode);
                    cmd.Parameters.AddWithValue("@Phone",txtPhone);
                    cmd.Parameters.AddWithValue("@Alternate_Phone",txtAltPhone);
                    cmd.Parameters.AddWithValue("@Email",txtEmail);
                    cmd.Parameters.AddWithValue("@Alternate_Email",txtAltEmail);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

        }

        private void addOverviewToDatabase(Boolean LandUseYes, Boolean LandUseNo, Boolean ElectricalYes, Boolean ElectricalNo, Boolean AffidavitYes, Boolean AffidavitNo, Boolean mowingYes, Boolean mowingNo, string txtPermit, string txtCove, string txtDockExp, string txtElectrical, string txtEexpiration, string txtEncroachment, string txtEType, string txtLandUse, string txtLexpiration, string txtLType, string txtMowing, string txtName, string txtWater, string txtWaterType, string txtWExpiration, string txtwORB)
        {
            OleDbConnection conn;
            OleDbCommand cmd;

            using (conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                using (cmd = conn.CreateCommand())
                {

                    cmd.CommandText = "INSERT INTO Overview(Land_Use, Electrical, E_Affidavit, Mowing, Permit_Number,Mowing_Text,Electrical_Text,E_Expiration,E_Type,Water,W_ORB_Number,W_Expiration,Water_Type,Full_Name,Dock_Expiration,Encroachment_Status,Cove,Land_Use_Text,L_Expiration,L_Type) VALUES (@Land_Use, @Electrical, @E_Affidavit,@Mowing, @Permit_Number,@Mowing_Text,@Electrical_Text,@E_Expiration,@E_Type,@Water,@W_ORB_Number,@W_Expiration,@Water_Type,@Full_Name,@Dock_Expiration,@Encroachment_Status,@Cove,@Land_Use_Text,@L_Expiration,@L_Type)";
                    cmd.CommandType = CommandType.Text;
                    if (LandUseYes)
                    {
                        cmd.Parameters.AddWithValue("@Land_Use", 1);
                    }
                    if (LandUseNo)
                    {
                        cmd.Parameters.AddWithValue("@Land_Use", 0);
                    }
                    if (ElectricalYes)
                    {
                        cmd.Parameters.AddWithValue("@Electrical", 1);
                    }
                    if (ElectricalNo)
                    {
                        cmd.Parameters.AddWithValue("@Electrical", 0);
                    }
                    if (AffidavitYes)
                    {
                        cmd.Parameters.AddWithValue("@E_Affidavit", 1);
                    }
                    if (AffidavitNo)
                    {
                        cmd.Parameters.AddWithValue("@E_Affidavit", 0);
                    }
                    if (mowingYes)
                    {
                        cmd.Parameters.AddWithValue("@Mowing", 1);
                    }
                    if (mowingNo)
                    {
                        cmd.Parameters.AddWithValue("@Mowing", 0);
                    }
                    cmd.Parameters.AddWithValue("@Permit_Number", txtPermit);
                    cmd.Parameters.AddWithValue("@Mowing_Text", txtMowing);
                    cmd.Parameters.AddWithValue("@Electrical_Text", txtElectrical);
                    cmd.Parameters.AddWithValue("@E_Expiration", txtEexpiration);
                    cmd.Parameters.AddWithValue("@E_Type", txtEType);
                    cmd.Parameters.AddWithValue("@Water", txtWater);
                    cmd.Parameters.AddWithValue("@W_ORB_Number", txtwORB);
                    cmd.Parameters.AddWithValue("@W_Expiration", txtWExpiration);
                    cmd.Parameters.AddWithValue("@Water_Type", txtWaterType);
                    cmd.Parameters.AddWithValue("@Full_Name", txtName);
                    cmd.Parameters.AddWithValue("@Dock_Expiration", txtDockExp);
                    cmd.Parameters.AddWithValue("@Encroachment_Status", txtEncroachment);
                    cmd.Parameters.AddWithValue("@Cove", txtCove);
                    cmd.Parameters.AddWithValue("@Land_Use_Text) ", txtLandUse);
                    cmd.Parameters.AddWithValue("@L_Expiration", txtLexpiration);
                    cmd.Parameters.AddWithValue("@L_Type", txtLType);

                    conn.Open();
                    cmd.ExecuteNonQuery();



                }
            }

        }

        private void addDockToDatabase(string txtPermit, Boolean radSundeckYes, Boolean radSundeckNo, Boolean radShorelineUsageYes, Boolean radShorelineUsageNo, Boolean radCoveredYes, Boolean radCoveredNo, Boolean radEnclosedYes, Boolean radEnclosedNo, string txtDockType, string txtSize, string txtLastInspection, string txtNumOfSlips, string txtNotes)
        {
            OleDbConnection conn;
            OleDbCommand cmd;
            using (conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                using (cmd = conn.CreateCommand())
                {

                    cmd.CommandText = "INSERT INTO Dock(Permit_Number,Dock_Type,Craft_Size,Sundeck,Shoreline_Usage,Covered,Enclosed_Dock,Last_Inspection,Number_of_Slips,Notes) VALUES (@Permit_Number,@Dock_Type,@Craft_Size,@Sundeck,@Shoreline_Usage,@Covered,@Enclosed_Dock,@Last_Inspection,@Number_of_Slips,@Notes)";
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@Permit_Number", txtPermit);
                    cmd.Parameters.AddWithValue("@Dock_Type", txtDockType);
                    cmd.Parameters.AddWithValue("@Craft_Size", txtSize);
                    if (radSundeckYes)
                    {
                        cmd.Parameters.AddWithValue("@Sundeck", 1);
                    }
                    if (radSundeckNo)
                    {
                        cmd.Parameters.AddWithValue("@Sundeck", 0);
                    }
                    if (radShorelineUsageYes)
                    {
                        cmd.Parameters.AddWithValue("@Shoreline_Usage", 1);
                    }
                    if (radShorelineUsageNo)
                    {
                        cmd.Parameters.AddWithValue("@Shoreline_Usage", 0);
                    }
                    if (radCoveredYes)
                    {
                        cmd.Parameters.AddWithValue("@Covered", 1);
                    }
                    if (radCoveredNo)
                    {
                        cmd.Parameters.AddWithValue("@Covered", 0);
                    }
                    if (radEnclosedYes)
                    {
                        cmd.Parameters.AddWithValue("@Enclosed_Dock", 1);
                    }
                    if (radEnclosedNo)
                    {
                        cmd.Parameters.AddWithValue("@Enclosed_Dock", 0);
                    }
                    cmd.Parameters.AddWithValue("@Last_Inspection", txtLastInspection);
                    cmd.Parameters.AddWithValue("@Number_of_Slips", txtNumOfSlips);
                    cmd.Parameters.AddWithValue("@Notes", txtNotes);

                    conn.Open();
                    cmd.ExecuteNonQuery();

                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            radLandUseYes.Checked = false;
            radLandUseNo.Checked = false;
            radElectricalYes.Checked = false;
            radElectricalNo.Checked = false;
            radAffidavitYes.Checked = false;
            radAffidavitNo.Checked = false;
            radMowingYes.Checked = false;
            radMowingNo.Checked = false;
            txtPermit.Text = "";
            txtCove.Text = "";
            txtDockExp.Text = "";
            txtElectrical.Text = "";
            txtEexpiration.Text = "";
            txtEncroachment.Text = "";
            txtEType.Text = "";
            txtLandUse.Text = "";
            txtLexpiration.Text = "";
            txtLType.Text = "";
            txtMowing.Text = "";
            txtName.Text = "";
            txtWater.Text = "";
            txtWaterType.Text = "";
            txtWExpiration.Text = "";
            txtwORB.Text = "";
            txtPermit.Text = "";
            radSundeckYes.Checked = false;
            radSundeckNo.Checked = false;
            radShorelineUsageYes.Checked = false;
            radShorelineUsageNo.Checked = false;
            radCoveredYes.Checked = false;
            radCoveredNo.Checked = false;
            radEnclosedYes.Checked = false;
            radEnclosedNo.Checked = false;
            txtDockType.Text = "";
            txtSize.Text = "";
            txtLastInspection.Text = "";
            txtNumOfSlips.Text = "";
            txtNotes.Text = "";
            txtPermit.Text = "";
            txtState.Text = "";
            txtAltState.Text = "";
            txtAddress.Text = "";
            txtAltAddress.Text = "";
            txtCity.Text = "";
            txtAltCity.Text = "";
            txtZipCode.Text = "";
            txtAltZipCode.Text = "";
            txtPhone.Text = "";
            txtAltPhone.Text = "";
            txtEmail.Text = "";
            txtAltEmail.Text = "";

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String Name;
            String Permit;
            String Address;
            Name = txtSearchName.Text;
            Name = Name.ToUpper();
            Permit = txtSearchPermit.Text;
            Permit = Permit.ToUpper();
            Address = txtSearchAddress.Text;
            Address = Address.ToUpper();
            OleDbConnection conn;

            using (conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                string cmd = "select * from Overview";
                OleDbCommand command = new OleDbCommand(cmd, conn);
                conn.Open();
                OleDbDataReader reader;
                reader = command.ExecuteReader();
                if (txtSearchName.Text != "")
                {
                    //txtPermit.Text = (reader["Permit_Number"].ToString());
                    txtCove.Text = reader["Cove"].ToString();
                    txtDockExp.Text = "";
                    txtElectrical.Text = "";
                    txtEexpiration.Text = "";
                    txtEncroachment.Text = "";
                    txtEType.Text = "";
                    txtLandUse.Text = "";
                    txtLexpiration.Text = "";
                    txtLType.Text = "";
                    txtMowing.Text = "";
                    txtName.Text = "";
                    txtWater.Text = "";
                    txtWaterType.Text = "";
                    txtWExpiration.Text = "";
                    txtwORB.Text = "";
                    txtDockType.Text = "";
                    txtSize.Text = "";
                    txtLastInspection.Text = "";
                    txtNumOfSlips.Text = "";
                    txtNotes.Text = "";
                    txtState.Text = "";
                    txtAltState.Text = "";
                    txtAddress.Text = "";
                    txtAltAddress.Text = "";
                    txtCity.Text = "";
                    txtAltCity.Text = "";
                    txtZipCode.Text = "";
                    txtAltZipCode.Text = "";
                    txtPhone.Text = "";
                    txtAltPhone.Text = "";
                    txtEmail.Text = "";
                    txtAltEmail.Text = "";
                    radLandUseYes.Checked = false;
                    radLandUseNo.Checked = false;
                    radElectricalYes.Checked = false;
                    radElectricalNo.Checked = false;
                    radAffidavitYes.Checked = false;
                    radAffidavitNo.Checked = false;
                    radMowingYes.Checked = false;
                    radMowingNo.Checked = false;
                    radSundeckYes.Checked = false;
                    radSundeckNo.Checked = false;
                    radShorelineUsageYes.Checked = false;
                    radShorelineUsageNo.Checked = false;
                    radCoveredYes.Checked = false;
                    radCoveredNo.Checked = false;
                    radEnclosedYes.Checked = false;
                    radEnclosedNo.Checked = false;
                }
            }
                //}
            //}
            /*txtPermit.Text = "";
            txtCove.Text = "";
            txtDockExp.Text = "";
            txtElectrical.Text = "";
            txtEexpiration.Text = "";
            txtEncroachment.Text = "";
            txtEType.Text = "";
            txtLandUse.Text = "";
            txtLexpiration.Text = "";
            txtLType.Text = "";
            txtMowing.Text = "";
            txtName.Text = "";
            txtWater.Text = "";
            txtWaterType.Text = "";
            txtWExpiration.Text = "";
            txtwORB.Text = "";                    
            txtDockType.Text = "";
            txtSize.Text = "";
            txtLastInspection.Text = "";
            txtNumOfSlips.Text = "";
            txtNotes.Text = "";
            txtState.Text = "";
            txtAltState.Text = "";
            txtAddress.Text = "";
            txtAltAddress.Text = "";
            txtCity.Text = "";
            txtAltCity.Text = "";
            txtZipCode.Text = "";
            txtAltZipCode.Text = "";
            txtPhone.Text = "";
            txtAltPhone.Text = "";
            txtEmail.Text = "";
            txtAltEmail.Text = "";
            radLandUseYes.Checked = false;
            radLandUseNo.Checked = false;
            radElectricalYes.Checked = false;
            radElectricalNo.Checked = false;
            radAffidavitYes.Checked = false;
            radAffidavitNo.Checked = false;
            radMowingYes.Checked = false;
            radMowingNo.Checked = false;
            radSundeckYes.Checked = false;
            radSundeckNo.Checked = false;
            radShorelineUsageYes.Checked = false;
            radShorelineUsageNo.Checked = false;
            radCoveredYes.Checked = false;
            radCoveredNo.Checked = false;
            radEnclosedYes.Checked = false;
            radEnclosedNo.Checked = false;*/

        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}