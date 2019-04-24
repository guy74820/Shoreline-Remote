<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Shoreline_Remote.WebForm1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:ScriptManager ID="ScriptManager1" runat="server">
			</asp:ScriptManager>
        </div>
        	<ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="3" Height="498px" Width="622px">
				<ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">		
					<HeaderTemplate>
						Overview
					</HeaderTemplate>
					<ContentTemplate>
						<asp:Label ID="Label2" runat="server" Text="Permit #"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label3" runat="server" Text="W Expiration"></asp:Label>
						<br />
						<asp:TextBox ID="txtPermit" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtWExpiration" runat="server"></asp:TextBox>
						<ajaxToolkit:CalendarExtender ID="txtWExpiration_CalendarExtender" runat="server" BehaviorID="TextBox8_CalendarExtender" TargetControlID="txtWExpiration" />
						<br />
						<asp:Label ID="Label4" runat="server" Text="Mowing"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label5" runat="server" Text="Water Type"></asp:Label>
						<br />
						<asp:TextBox ID="txtMowing" runat="server"></asp:TextBox>
						<asp:RadioButton ID="radMowingYes" runat="server" GroupName="Mowing" Text="(Y)" />
						<asp:RadioButton ID="radMowingNo" runat="server" GroupName="Mowing" Text="(N)" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtWaterType" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label6" runat="server" Text="Electrical"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
						<br />
						<asp:TextBox ID="txtElectrical" runat="server"></asp:TextBox>
						<asp:RadioButton ID="radElectricalYes" runat="server" GroupName="Electrical" Text="(Y)" />
						<asp:RadioButton ID="radElectricalNo" runat="server" GroupName="Electrical" Text="(N)" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label8" runat="server" Text="E Expiration"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label9" runat="server" Text="Dock Expiration"></asp:Label>
						<br />
						<asp:TextBox ID="txtEexpiration" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
						<ajaxToolkit:CalendarExtender ID="txtEexpiration_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" TargetControlID="txtEexpiration" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtDockExp" runat="server"></asp:TextBox>
						<ajaxToolkit:CalendarExtender ID="txtDockExp_CalendarExtender" runat="server" BehaviorID="TextBox11_CalendarExtender" TargetControlID="txtDockExp" />
						<br />
						<asp:Label ID="Label10" runat="server" Text="E Type"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label11" runat="server" Text="Encroachment Status"></asp:Label>
						<br />
						<asp:TextBox ID="txtEType" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtEncroachment" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label12" runat="server" Text="E Affidavit"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label13" runat="server" Text="Cove"></asp:Label>
						<br />
						<asp:RadioButton ID="radAffidavitYes" runat="server" GroupName="Affidavit" Text="(Y)" />
						<asp:RadioButton ID="radAffidavitNo" runat="server" GroupName="Affidavit" Text="(N)" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtCove" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label14" runat="server" Text="Water"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label15" runat="server" Text="Land Use"></asp:Label>
						<br />
						<asp:TextBox ID="txtWater" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtLandUse" runat="server"></asp:TextBox>
						<asp:RadioButton ID="radLandUseYes" runat="server" GroupName="Land Use" Text="(Y)" />
						<asp:RadioButton ID="radLandUseNo" runat="server" GroupName="Land Use" Text="(N)" />
						<br />
						<asp:Label ID="Label16" runat="server" Text="W ORB#"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label17" runat="server" Text="L Type"></asp:Label>
						<br />
						<asp:TextBox ID="txtwORB" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtLType" runat="server"></asp:TextBox>
						<br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label41" runat="server" Text="L Expiration"></asp:Label>
						<br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtLexpiration" runat="server"></asp:TextBox>
						<ajaxToolkit:CalendarExtender ID="txtLexpiration_CalendarExtender" runat="server" BehaviorID="TextBox36_CalendarExtender" TargetControlID="txtLexpiration" />
					</ContentTemplate>
				</ajaxToolkit:TabPanel>
				<ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
					<HeaderTemplate>
						Dock
					</HeaderTemplate>
					<ContentTemplate>
						<asp:Label ID="Label1" runat="server" Text="Dock Type"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label22" runat="server" Text="Sundeck"></asp:Label>
						<br />
						<asp:TextBox ID="txtDockType" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:RadioButton ID="radSundeckYes" runat="server" GroupName="Sundeck" Text="(Y)" />
						<asp:RadioButton ID="radSundeckNo" runat="server" GroupName="Sundeck" Text="(N)" />
						<br />
						<asp:Label ID="Label18" runat="server" Text="Size"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label23" runat="server" Text="Shoreline Usage"></asp:Label>
						<br />
						<asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:RadioButton ID="radShorelineUsageYes" runat="server" GroupName="Shoreline Usage" Text="(Y)" />
						<asp:RadioButton ID="radShorelineUsageNo" runat="server" GroupName="Shoreline Usage" Text="(N)" />
						<br />
						<asp:Label ID="Label19" runat="server" Text="Last Inspection"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label24" runat="server" Text="Covered (Roof)"></asp:Label>
						<br />
						<asp:TextBox ID="txtLastInspection" runat="server"></asp:TextBox>
						<ajaxToolkit:CalendarExtender ID="txtLastInspection_CalendarExtender" runat="server" BehaviorID="TextBox18_CalendarExtender" TargetControlID="txtLastInspection" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:RadioButton ID="radCoveredYes" runat="server" GroupName="Covered" Text="(Y)" />
						<asp:RadioButton ID="radCoveredNo" runat="server" GroupName="Covered" Text="(N)" />
						<br />
						<asp:Label ID="Label21" runat="server" Text="# of Slips"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label25" runat="server" Text="Enclosed Dock"></asp:Label>
						<br />
						<asp:TextBox ID="txtNumOfSlips" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:RadioButton ID="radEnclosedYes" runat="server" GroupName="Enclosed Dock" Text="(Y)" />
						<asp:RadioButton ID="radEnclosedNo" runat="server" GroupName="Enclosed Dock" Text="(N)" />
						<br />
						<asp:Label ID="Label20" runat="server" Text="Notes"></asp:Label>
						<br />
						<asp:TextBox ID="txtNotes" runat="server" Height="60px" Width="336px"></asp:TextBox>
					</ContentTemplate>
				</ajaxToolkit:TabPanel>
				<ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
					<HeaderTemplate>
						Contact
					</HeaderTemplate>
					<ContentTemplate>
						<asp:Label ID="Label26" runat="server" Text="Address"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label32" runat="server" Text="Alternate Address"></asp:Label>
						<br />
						<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtAltAddress" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label27" runat="server" Text="City"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label33" runat="server" Text="Alternate City"></asp:Label>
						<br />
						<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtAltCity" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label28" runat="server" Text="Zip Code"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label34" runat="server" Text="Alternate Zip Code"></asp:Label>
						<br />
						<asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtAltZipCode" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label29" runat="server" Text="State"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label35" runat="server" Text="Alternate State"></asp:Label>
						<br />
						<asp:TextBox ID="txtState" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtAltState" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label30" runat="server" Text="Email"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label36" runat="server" Text="Alternate Email"></asp:Label>
						<br />
						<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtAltEmail" runat="server"></asp:TextBox>
						<br />
						<asp:Label ID="Label31" runat="server" Text="Phone"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label37" runat="server" Text="Alternate Phone"></asp:Label>
						<br />
						<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtAltPhone" runat="server"></asp:TextBox>
					</ContentTemplate>
				</ajaxToolkit:TabPanel>
				<ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
					<HeaderTemplate>
						Create/Search/Save&nbsp;
					</HeaderTemplate>
					<ContentTemplate>
						<asp:Button ID="btnSave" runat="server" Height="40px" OnClick="btnSave_Click" Text="Save" Width="90px" />
						<br />
						<br />
						<asp:Button ID="btnCreate" runat="server" Height="40px" Text="Create New" Width="90px" OnClick="btnCreate_Click" />
						<br />
						<br />
						<asp:Label ID="Label38" runat="server" Text="Name"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label39" runat="server" Text="Address"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="Label40" runat="server" Text="Permit #"></asp:Label>
						<br />
						<asp:TextBox ID="txtSearchName" runat="server"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:TextBox ID="txtSearchAddress" runat="server"></asp:TextBox>
						&nbsp;
						<asp:TextBox ID="txtSearchPermit" runat="server"></asp:TextBox>
						<br />
						<asp:Button ID="btnSearch" runat="server" Height="40px" Text="Search" Width="90px" OnClick="btnSearch_Click" />
					</ContentTemplate>
				</ajaxToolkit:TabPanel>
			</ajaxToolkit:TabContainer>
    </form>
</body>
</html>
