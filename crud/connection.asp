<%
Class Connection
    Private dbConn
    
    Private Sub Class_Initialize()
        Set dbConn = Server.CreateObject("ADODB.Connection")
        dbConn.Open "Driver={MySQL ODBC 5.1 Driver};Server=localhost;Database=asp_schedule;Uid=root;Pwd=root;"
    End Sub
    
    Public Function GetConnection()
        Set GetConnection = dbConn
    End Function
    
    Private Sub Class_Terminate()
        dbConn.Close
        Set dbConn = Nothing
    End Sub
End Class
%>