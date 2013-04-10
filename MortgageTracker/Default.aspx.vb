Imports System.Data
Imports System.Data.SqlClient


Public Class _Default
    Inherits System.Web.UI.Page
    Dim strKeyWord As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        strKeyWord = Me.txtKeyWord.Text
    End Sub

    Sub BindData()



        Dim objConn As New SqlConnection

        Dim objCmd As New SqlCommand

        Dim dtAdapter As New SqlDataAdapter

        Dim ds As New DataSet

        Dim strConnString, strSQL As String



        strConnString = "Data Source=a7cry5jye1.database.windows.net;Initial Catalog=MortgagAJxWJlt5B;Persist Security Info=True;User ID=AIBMortgageTracker;Password=X22vwvs42s;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;"

        objConn.ConnectionString = strConnString

        strSQL = "SELECT [ID], [CustomerType], [MortgageStatus] FROM Status WHERE ([ID] = '" & strKeyWord & "') "





        With objCmd

            .Connection = objConn

            .CommandText = strSQL

            .CommandType = CommandType.Text

        End With

        dtAdapter.SelectCommand = objCmd
        dtAdapter.Fill(ds)

        '*** BindData to GridView ***'

        myGridView.DataSource = ds

        myGridView.DataBind()


        dtAdapter = Nothing

        objConn.Close()

        objConn = Nothing


    End Sub

    Sub myGridView_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)



        Dim lblID As Label = CType(e.Row.FindControl("ID"), Label)

        If Not IsNothing(lblID) Then

            lblID.Text = e.Row.DataItem("ID")

        End If


        Dim lblCustomerStatus As Label = CType(e.Row.FindControl("CustomerType"), Label)

        If Not IsNothing(lblCustomerStatus) Then

            lblCustomerStatus.Text = e.Row.DataItem("CustomerType")

        End If


        Dim lblMortgageStatus As Label = CType(e.Row.FindControl("MortgageStatus"), Label)

        If Not IsNothing(lblMortgageStatus) Then

            lblMortgageStatus.Text = e.Row.DataItem("MortgageStatus")

        End If



    End Sub



    Sub ShowPageCommand(ByVal s As Object, ByVal e As GridViewPageEventArgs)

        myGridView.PageIndex = e.NewPageIndex

        BindData()

    End Sub



    Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs)

        BindData()

    End Sub



End Class