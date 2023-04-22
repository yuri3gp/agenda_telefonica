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
        dim objconn
        set conn = new Connection
        set objconn = conn.GetConnection()
        sql = "DELETE FROM people WHERE id = '" & id & "'"
        objconn.Execute sql
    End Function

    Function Update(people)
        dim objconn
        set conn = new Connection
        set objconn = conn.GetConnection()
        sql = "UPDATE people SET name = '" & people.name & "', phone = '" & people.phone & "' WHERE id = '" & people.id & "'"
        objconn.Execute sql
    End Function

End Class
%>