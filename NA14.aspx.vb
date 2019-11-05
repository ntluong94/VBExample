Imports System.Data.SqlClient

Public Class Na_14
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then

            ShowHikensha()
        End If




    End Sub

    Function ShowHikensha() As Single

        Dim dtoHikensha As New Hikensha_DTO
        Dim sql As String = ""
        sql &= "SELECT"
        sql &= "*"
        sql &= "FROM mst_hikensha"
        Dim dt As New DataTable
        dt = ConnectDatabase.ExecQuery(sql)

        'If dt.Rows.Count > 0 Then

        '    'Dim dt1 As DateTime = DateTime.Parse(dt.Rows(0)("InsYmd"))
        '    'Dim dt2 As DateTime = DateTime.Parse(dt.Rows(0)("UpdIYmd"))
        '    dtoHikensha.HikenshaID = dt.Rows(0)("HikenshaID").ToString
        '    dtoHikensha.NameMei = dt.Rows(0)("NameMei").ToString
        '    dtoHikensha.InsYmd = DateTime.Parse(dt.Rows(0)("UpdIYmd").ToString).ToString("MM/dd/yyyy")
        '    dtoHikensha.UpdIYmd = dt.Rows(0)("InsYmd").ToString
        '    'dtoHikensha.UpdIYmd = Convert.ToDateTime(dt.Rows(0)("UpdIYmd").ToString)

        'End If
        ''ListView1.Items.Add(New ListViewItem("1"))
        '''ListView1.Items.Add(New ListViewItem(dtoHikensha.InsYmd.ToShortDateString))
        '''ListView1.Items.Add(New ListViewItem(dtoHikensha.UpdIYmd.ToShortDateString))
        ''ListView1.DataSource = dt
        ''ListView1.DataBind()


        Dim myrow As DataRow

        For Each myrow In dt.Rows
            ListView1.Items.Add(myrow.Item(5))
            ListView1.Items.Add(myrow.Item(6))
            ListView1.Items.Add(myrow.Item(7))
            ListView1.Items.Add(myrow.Item(8))
            ListView1.Items.Add(myrow.Item(9))
            ListView1.Items.Add(myrow.Item(10))
        Next



    End Function


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class