<%
double d = (Double)request.getAttribute("s");
int  i = (Integer)request.getAttribute("i");
double a = (Double)request.getAttribute("a");
out.print((int) d+"|"+(int)a+"|"+i);
%>