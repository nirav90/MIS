<%
double premiumNetOfServiceTax = (Double)request.getAttribute("premiumNetOfServiceTax");
int  i = (Integer)request.getAttribute("i");
double serviceTax = (Double)request.getAttribute("serviceTax");
double totalPremium = (Double)request.getAttribute("totalPremium");
out.print( (double)premiumNetOfServiceTax+"|"+(double)serviceTax+"|"+(double)totalPremium+"|"+i);
%>