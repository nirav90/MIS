<%
double premiumNetOfServiceTax = (Double)request.getAttribute("premiumNetOfServiceTax");
int  i = (Integer)request.getAttribute("i");
double serviceTax = (Double)request.getAttribute("serviceTax");
out.print( (double)premiumNetOfServiceTax+"|"+(double)serviceTax+"|"+i);
%>