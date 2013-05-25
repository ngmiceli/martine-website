<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<head>
  <title>NRM Test Page</title>
  <style type="text/css">
  body {
    padding-left: 11em;
    font-family: Georgia, "Times New Roman",
          Times, serif;
    color: purple;
    background-color: #d8da3d }
  ul.navbar {
    list-style-type: none;
    padding: 0;
    margin: 0;
    position: absolute;
    top: 2em;
    left: 1em;
    width: 9em }
  h1 {
    font-family: Helvetica, Geneva, Arial,
          SunSans-Regular, sans-serif }
  ul.navbar li {
    background: white;
    margin: 0.5em 0;
    padding: 0.3em;
    border-right: 1em solid black }
  ul.navbar a {
    text-decoration: none }
  a:link {
    color: blue }
  a:visited {
    color: purple }
  address {
    margin-top: 1em;
    padding-top: 1em;
    border-top: thin dotted }
  </style>
</head>

<body>

<!-- Site navigation menu -->
<ul class="navbar">
  <li><a href="index.html">Home page</a>
  <li><a href="link1.html">Link 1</a>
  <li><a href="link2.html">Link 2</a>
  <li><a href="link3.html">Link 3</a>
</ul>

<!-- Main content -->
<h1>Test CSS-styled page</h1>

<p>Welcome to my test CSS page!

<p>It lacks images, but at least it has style.
And it has links, even if they don't go
anywhere&hellip;

<p>According to Java, the time is now <%= new java.util.Date() %>


<%
    // This scriptlet declares and initializes "date"
    System.out.println( "Evaluating date now" );
    java.util.Date date = new java.util.Date();
%>
<p>According to my Java scriptlet, the time is now
<%
    // This scriptlet generates HTML output
    out.println( String.valueOf( date ));

    out.println( "<BR>Your machine's address is " );
    out.println( request.getRemoteHost());

%>


<TABLE BORDER=2>
<%
    for ( int i = 0; i < 6; i++ ) {
        %>
        <TR>
        <TD>Number</TD>
        <TD><%= i+1 %></TD>
        </TR>
        <%
    }
%>
</TABLE>

<FORM METHOD=POST ACTION="nrmtest2.jsp">
What's your name? <INPUT TYPE=TEXT NAME=username SIZE=20>
<P><INPUT TYPE=SUBMIT>
</FORM>

</body>
</html>

