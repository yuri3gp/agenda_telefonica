<!--#include file="peopleController.asp"-->
<!--#include file="people.asp"-->
<%
    Function post()
        Dim objpeople
        Set objpeople = New People
        objpeople.name = "Moacir - duran"
        objpeople.phone = "85956595"
        Dim objpeopleController
        Set objpeopleController = New PeopleController
        objpeopleController.Create(objpeople)
    End Function

    post()
%>