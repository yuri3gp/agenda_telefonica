<!--#include file="./crud/peopleController.asp"-->

<%
    Dim objpeople
    Set objpeople = New People
    objpeople.id = 1
    objpeople.name = "Update works"
    objpeople.phone = "85956595"
    Dim objpeopleController
    Set objpeopleController = New PeopleController

    ' objpeopleController.Create(objpeople)
    ' objpeopleController.Update(objpeople)
    ' objpeopleController.Delete(objpeople.id)
    ' returnlist = objpeopleController.List(0,5,"id")
%>