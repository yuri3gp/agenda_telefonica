<!--#include file="./crud/peopleController.asp"-->

<%
    Dim objpeople
    Set objpeople = New People

    objpeople.id = 1
    objpeople.name = "Jhon due"
    objpeople.phone = "555-0123"

    Dim objpeopleController
    Set objpeopleController = New PeopleController

    requestType = "list"

    Select Case requestType
        Case "create"
            objpeopleController.Create(objpeople)
        Case "update"
            objpeopleController.Update(objpeople)
        Case "delete"
            objpeopleController.Delete(objpeople.id)
        Case Else
            returnlist = objpeopleController.List(0,5,"id")
    End Select
%>