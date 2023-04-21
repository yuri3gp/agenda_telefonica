<!--#include file="peopleController.asp"-->
<!--#include file="people.asp"-->
<%
    Function Create()
        Dim objpeople
        Set objpeople = New People
        objpeople.name = "Moacir - duran"
        objpeople.phone = "85956595"
        Dim objpeopleController
        Set objpeopleController = New PeopleController
        objpeopleController.Create(objpeople)
    End Function

    Function Update()
        Dim objpeople
        Set objpeople = New People
        objpeople.name = "Moacir - duran"
        objpeople.phone = "85956595"
        Dim objpeopleController
        Set objpeopleController = New PeopleController
        objpeopleController.Create(objpeople)
    End Function
%>