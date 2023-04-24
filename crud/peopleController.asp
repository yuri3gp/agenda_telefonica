<!--#include file="connection.asp"-->
<!--#include file="peopleModel.asp"-->
<%
Class PeopleController

    private conn

    Function List(page, size, order)
        dim objconn
        set conn = new Connection
        set objconn = conn.GetConnection()
        offset = CInt(page)*CInt(size)
        sql = "SELECT id,name,phone FROM people ORDER BY " & order & " LIMIT " & size & " OFFSET " & offset
        Set rs = Server.CreateObject("ADODB.Recordset")
        rs.Open sql, objconn
        Dim peopleArray()
        ReDim Preserve peopleArray(-1)
        i = 0
        Do Until rs.EOF
            Dim objpeople
            Set objpeople = new People
            objpeople.id = rs("id")
            objpeople.name = rs("name")
            objpeople.phone = rs("phone")
            ReDim Preserve peopleArray(UBound(peopleArray) + 1)
            set peopleArray(i) = objpeople
            i = i + 1
            rs.MoveNext
        Loop
        rs.Close
        Set rs = Nothing
        List = peopleArray
    End Function

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