<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <script>
            function removeElement()
            {
                var a = document.getElementById('form');
                var b = document.getElementById('criteria');
                a.removeChild(b);
            }

            function removeElement2()
            {
                var a = document.getElementById('form');
                var b = document.getElementById('criteria2');
                a.removeChild(b);
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Filter Page</title>
    </head>
    <body>
        <h1>Filter</h1>
        <form id="form" action="filterProcess.jsp" method="post">
            <table style="background-color: #ECE5B6;" WIDTH="30%" >
            <br>Filter name: <input type="text" id="filter_name" name="filter_name"><br>

            Criteria<br>
            <input type="text" placeholder="amount" name="filter_amount"><input type="number" placeholder="number" name="filter_number"><br>
            <div id="criteria"><input type="text" placeholder="title" name="filter_title"><input type="text" placeholder="meow" name="filter_meow"><input type="button" onclick="removeElement()" value="-"/></div>
            <div id="criteria2"><input type="date" placeholder="date" name="filter_date"><input type="button" onclick="removeElement2()" value="-"/></div>

            <div>
                <input type="radio" id="html" name="selection" value="select_1">
                <label for="select_1">Select 1</label>
                <input type="radio" id="css" name="selection" value="select_2">
                <label for="select_2">Select 2</label>
                <input type="radio" id="javascript" name="selection" value="select_3">
                <label for="select_3">Select 3</label>
            </div>
            <input type="submit" value="submit">
            </table>
        </form>
    </body>
</html>
