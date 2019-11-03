Imports System.Data.SqlClient


Public Class Form1
    Inherits Page

    Public data As New ConnectDatabase
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then

            ShowStudent()
        End If
    End Sub
    Function ShowStudent() As Single
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=DESKTOP-C88SP2G\SQLEXPRESS;Initial Catalog=QuanLySinhVien;Integrated Security=True"
        con.Open()
        cmd.CommandText = "SELECT * FROM SINHVIEN"
        cmd.Connection = con
        ListView1.DataSource = cmd.ExecuteReader
        ListView1.DataBind()
    End Function

End Class