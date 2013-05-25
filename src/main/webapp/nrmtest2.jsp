<%
   String name = request.getParameter( "username" );
   session.setAttribute( "theName", name );
%>
<HTML>
<BODY>
<A HREF="nrmtest3.jsp">Continue</A>
</BODY>
</HTML>

