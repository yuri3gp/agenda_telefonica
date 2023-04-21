<!--#include file="./crud/peopleController.asp"-->
<!--#include file="./crud/peopleModel.asp"-->
<%
Dim type = Request.Form("type")

Select Case type
    Case "post"
        Dim people
        Set people = New People
        people.name = Request.Form("name")
        people.phone = Request.Form("phone")
        Dim peopleController
        Set peopleController = New PeopleController
        peopleController.Create(people)
End Select
%>