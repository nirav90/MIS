<%
double d = (Double)request.getAttribute("s");
int  i = (Integer)request.getAttribute("i");
String c = (String)request.getAttribute("c");
out.print((int) d+"|"+c+"|"+i);
%>