using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Uploadfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string GetHeader(DataTable dtExcelData)
    {
        //int contentLength = txtFileUpload.PostedFile.ContentLength;
        //string contentType = txtFileUpload.PostedFile.ContentType;
        //string fileName = txtFileUpload.PostedFile.FileName;
        //string connString = "";
        //string strFileType = Path.GetExtension(txtFileUpload.PostedFile.FileName).ToLower();
        //if (strFileType.Trim() == ".xls")
        //{
        //    connString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
        //}
        //else if (strFileType.Trim() == ".xlsx")
        //{
        //    connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileName + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
        //}
        //OleDbConnection xlConn = new OleDbConnection(connString);
        //xlConn.Open();
        ////Get columns
        //DataTable dtColumns = new DataTable();
        //List<string> columns = new List<string>();

        //List<string> headerCB = new List<string>();
        //OleDbDataAdapter exDA = new OleDbDataAdapter("Select * from [Sheet1$]", xlConn);
        //exDA.Fill(dtColumns);
        //xlConn.Close();
        //CODE TO ADD TABLE HEADERS INTO THE HEADERS COMBOBOX
        string strHtml = "";
        string strHeader = "<tr>";
        foreach (DataColumn dc in dtExcelData.Columns)
        {
            strHeader += "<th>" + dc.ToString() + "</th>";
            strHtml += string.Format("<option   value='{0}' />{0} <br />", dc.ToString());
        }
        strHeader += "</tr>";
        grvExcelData.DataSource = dtExcelData;
        grvExcelData.DataBind();
        Session["ExcelData"] = dtExcelData;
        thDynamic.InnerHtml = strHeader;
        return strHtml;
    }
    public void BindheaderIndropdown(DataTable dtExcelData)
    {
            dynamic strHTML = "";
            dynamic strHeader = GetHeader(dtExcelData);
            strHTML += "<div class='controls'>";
            strHTML += "<select name='select1' id='select4' class='input-large' data-rule-required='true'>";
            strHTML += "<option value=''>-- Select --</option>";
            strHTML += "<option value='1'>-- Member ID --</option>";
            strHTML += "<option value='2'>-- NDC Code --</option>";
            strHTML += "</select>";
            strHTML += "<select name='select11' id='MemberID_ImportDDL' onchange='fnDdlFieldChange(this)' class='input-large' data-rule-required='true'>";
            strHTML += "<option value=''>-- Select --</option>";
            strHTML += strHeader;
            strHTML += "</select>";


            strHTML += "<select name='select1' id='select4' class='input-large' data-rule-required='true'>";
            strHTML += "<option value=''>-- Select --</option>";
            strHTML += "<option value='1'>-- Member ID --</option>";
            strHTML += "<option value='2'>-- NDC Code --</option>";
            strHTML += "</select>";
            strHTML += "<select name='select11' id='NDC_ImportDDL' onchange='fnDdlFieldChange(this)' class='input-large' data-rule-required='true'>";
            strHTML += "<option value=''>-- Select --</option>";
            strHTML += strHeader;
            strHTML += "</select>";
            dvdynamic.InnerHtml = strHTML;
    }
    protected void btnUpload1_Click(object sender, EventArgs e)
    {
       
        int contentLength = txtFileUpload.PostedFile.ContentLength;
        string contentType = txtFileUpload.PostedFile.ContentType;
        string fileName = txtFileUpload.PostedFile.FileName;
        string connString = "";
        string strFileType = Path.GetExtension(txtFileUpload.PostedFile.FileName).ToLower();
        if (strFileType.Trim() == ".xls")
        {
            connString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
        }
        else if (strFileType.Trim() == ".xlsx")
        {
            connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileName + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
        }
        OleDbConnection xlConn = new OleDbConnection(connString);
        xlConn.Open();
        //Get columns
        DataTable dtColumns = new DataTable();
        List<string> columns = new List<string>();

        List<string> headerCB = new List<string>();
        OleDbDataAdapter exDA = new OleDbDataAdapter("Select * from [Sheet1$]", xlConn);
        exDA.Fill(dtColumns);
        xlConn.Close();
        BindheaderIndropdown(dtColumns);
       
    }
}