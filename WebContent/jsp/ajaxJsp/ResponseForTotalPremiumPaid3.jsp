<%

int  i = (Integer)request.getAttribute("i");

double totalPremium = (Double)request.getAttribute("totalPremium");
out.print( (double)totalPremium+"|"+i);
%>