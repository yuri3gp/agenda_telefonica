<!--#include file="connection.asp"-->
<%
Class PeopleController

    private conn

    Function Create(people)
        dim objconn
        set conn = new Connection
        set objconn = conn.GetConnection()
        sql = "INSERT INTO people (name,phone) VALUES ('" & people.name & "', '" & people.phone & "')"
        objconn.Execute sql
    End Function

    Function Delete(id)
    End Function

    Function Update(id,people)
        dim objconn
        set conn = new Connection
        set objconn = conn.GetConnection()
    End Function

    Function List(sql)
    End Function

End Class
%>