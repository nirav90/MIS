<%
double d = (Double)request.getAttribute("s");
int  i = (Integer)request.getAttribute("i");
out.print((int) d+"|"+i);


%>