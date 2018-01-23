<%@ include file="./HeaderRelationManager.jsp"%>

<script type="text/javascript">
	var color;

	function demo() {

		var policyName = document.getElementById("demo1").value.trim();
		var url = "./jsp/div/" + policyName + ".jsp";
		document.getElementById('Loading').style.display = 'block';
		reqAjax(url, "", callbackForInsuredName)
	}
	function callbackForInsuredName() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				alert("HTTP error " + xmlHttp.status + ": "
						+ xmlHttp.statusText);
			}
		}
	}
	
	function getTotalownDamagePremium(i){
		document.getElementById("total1").value=0;
		var j=document.getElementsByName("ownDamagePremium").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total1").value=Number(document.getElementById("total1").value)+
		Number(document.getElementsByName("ownDamagePremium")[i].value);
		}
	}
	
	function getTotaltpPremium(i){
		document.getElementById("total2").value=0;
		var j=document.getElementsByName("tpPremium").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total2").value=Number(document.getElementById("total2").value)+
		Number(document.getElementsByName("tpPremium")[i].value);
		}
	}
	
	function getTotalpremiumNetOfServiceTax(i)
	{
		document.getElementById("total3").value=0;
		var j=document.getElementsByName("premiumNetOfServiceTax").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total3").value=Number(document.getElementById("total3").value)+
												Number(document.getElementsByName("premiumNetOfServiceTax")[i].value);
		}
	}
	
	function getTotalserviceTax(i){
		document.getElementById("total4").value=0;
		var j=document.getElementsByName("serviceTax").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total4").value=Number(document.getElementById("total4").value)+
		Number(document.getElementsByName("serviceTax")[i].value);
		}
	}
	
	function getTotalPremiumPaid(i){
		document.getElementById("total5").value=0;
		var j=document.getElementsByName("totalPremiumPaid").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total5").value=Number(document.getElementById("total5").value)+
		Number(document.getElementsByName("totalPremiumPaid")[i].value);
		}
	}
	
	
	function getTotalsumInsINR(i)
	{
		document.getElementById("total6").value=0;
		//alert(document.getElementsByName("sumInsINR").length);
		var j=document.getElementsByName("sumInsINR").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total6").value=Number(document.getElementById("total6").value)+
												Number(document.getElementsByName("sumInsINR")[i].value);
		}
	}
	
	function getTotalpremiumBeforeTerroAndTax(i)
	{
		//alert("in call");
		document.getElementById("total7").value=0;
		var j=document.getElementsByName("premiumBeforeTerroAndTax").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total7").value=Number(document.getElementById("total7").value)+
												Number(document.getElementsByName("premiumBeforeTerroAndTax")[i].value);
		}
	}
	
	function getTotalterrorismPremium(i)
	{
		document.getElementById("total8").value=0;
		var j=document.getElementsByName("terrorismPremium").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total8").value=Number(document.getElementById("total8").value)+
												Number(document.getElementsByName("terrorismPremium")[i].value);
		}
	}
	
	
	function getTotalstampDuty(i){
		
		document.getElementById("total9").value=0;
		var j=document.getElementsByName("stampDuty").length;
		for (i=0;i<j-1;i++){
		document.getElementById("total9").value=Number(document.getElementById("total9").value)+
												Number(document.getElementsByName("stampDuty")[i].value);
		}
		
		
	}
	
	
	/* function getTotalPremiumPaid(i)
	{
		document.getElementById("total6").value=Number(document.getElementById("total6").value)+
												Number(document.getElementsByName("totalPremiumPaid")[i].value);
		
	} */

	function getT(i)
	{
		var count=0;
		if(document.getElementsByName("sumInsINR")[i].value=="total")
		{
			//alert("in if");
			var sum = 0;
			for ( var j = (i-1); j >= 0 ; j--) 
			{
			sum = Number(sum) + Number(document.getElementsByName("sumInsINR")[j].value);
			} 
			//alert(sum);
			document.getElementsByName("sumInsINR")[i].value=sum;
		}
		else
		{	
		var sumInsINR = document.getElementsByName("sumInsINR")[i].value;
		var discount = document.getElementsByName("discount")[i].value;
		var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
		var queryString = "sumInsINR="+sumInsINR+"&discount="+discount+"&i="+i;
		alert(queryString);
		reqAjax("getCalculation", queryString, callbackForgetT);
		}
	}
	
	function callbackForgetT()
	{
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var str =  xmlHttp.responseText;
				//alert(str);
				var i = str.split("|");
				var j =i[1];
				document.getElementsByName("premiumBeforeTerroAndTax")[j].value=i[0];
			} else {
// 				//alert("HTTP error " + xmlHttp.status + ": "
// 						+ xmlHttp.statusText);
			}
		}
		
	}
	
	function getB(i)
	{
		var premiumBeforeTerroAndTax = document.getElementsByName("premiumBeforeTerroAndTax")[i].value;
		var terrorismPremium= document.getElementsByName("terrorismPremium")[i].value;
		
		var premiumNetOfServiceTax  = Number(premiumBeforeTerroAndTax)+Number(terrorismPremium);
		
		 document.getElementsByName("premiumNetOfServiceTax")[i].value=premiumNetOfServiceTax;
		
	 
		
		var queryString = "premiumNetOfServiceTax="+premiumNetOfServiceTax+"&i="+i;
		//alert(queryString);
		reqAjax("getCalculation2", queryString, callbackForgetB);
		
	}
	function callbackForgetB()
	{
		
		
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				
				//alert(xmlHttp.responseText);
				
				var str = xmlHttp.responseText;
				
				var w = str.split("|");
				
				document.getElementsByName("totalPremiumPaid")[w[2]].value=w[0];
				document.getElementsByName("serviceTax")[w[2]].value=w[1];
			} else {
// 				//alert("HTTP error " + xmlHttp.status + ": "
// 						+ xmlHttp.statusText);
			}
		}
		
	}
	
	function getTotalPremiumNetOfServiceTax(i){
		
		var ownDamagePremium = document.getElementsByName("ownDamagePremium")[i].value;
		var tpPremium = document.getElementsByName("tpPremium")[i].value;
		//var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
		var queryString = "ownDamagePremium="+ownDamagePremium+"&tpPremium="+tpPremium+"&i="+i;
		//alert(queryString);
		reqAjax("getTotalPremiumNetOfServiceTax", queryString, callbackForgetTotalPremiumNetOfServiceTax);
		
		
	}
	
	
	
	function callbackForgetTotalPremiumNetOfServiceTax()
	{
		
		//alert("in Call Back");
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				
				//alert(xmlHttp.responseText);
				
				var str = xmlHttp.responseText;
				
			//	alert(str);
				
				var w = str.split("|");
				var b=w[3];
				document.getElementsByName("premiumNetOfServiceTax")[b].value=w[0];
				document.getElementsByName("serviceTax")[b].value=w[1];
				document.getElementsByName("totalPremiumPaid")[b].value=w[2];
				
				
				//alert("After setting values");
				//document.getElementsByName("serviceTax")[w[2]].value=w[3];
			} else {
				alert("HTTP error " + xmlHttp.status + ": "
						+ xmlHttp.statusText);
			}
		}
		
	}
	
function getTotalPremiumNetOfServiceTax2(i){
		
		var premiumBeforeTerroAndTax = document.getElementsByName("premiumBeforeTerroAndTax")[i].value;
		var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
		//var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
		var queryString = "premiumBeforeTerroAndTax="+premiumBeforeTerroAndTax+"&terrorismPremium="+terrorismPremium+"&i="+i;
		//alert(queryString);
		reqAjax("getTotalPremiumNetOfServiceTax2", queryString, callbackForgetTotalPremiumNetOfServiceTax2);
		
		
	}
	
	
function callbackForgetTotalPremiumNetOfServiceTax2()
{
	
	//alert("in Call Back");
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			
			//alert(xmlHttp.responseText);
			
			var str = xmlHttp.responseText;
			
		//	alert(str);
			
			var w = str.split("|");
			var b=w[3];
			document.getElementsByName("premiumNetOfServiceTax")[b].value=w[0];
			document.getElementsByName("serviceTax")[b].value=w[1];
			document.getElementsByName("totalPremiumPaid")[b].value=w[2];
			
			
			//alert("After setting values");
			//document.getElementsByName("serviceTax")[w[2]].value=w[3];
		} else {
			alert("HTTP error " + xmlHttp.status + ": "
					+ xmlHttp.statusText);
		}
	}
	
}


function getTotalPremiumNetOfServiceTax3(i){
	
	var sumInsINR = document.getElementsByName("sumInsINR")[1].value;
	var policyRate = document.getElementsByName("policyRate")[0].value;
	//var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
	var queryString = "sumInsINR="+sumInsINR+"&policyRate="+policyRate+"&i="+i;
	//alert(queryString);
	reqAjax("getTotalPremiumNetOfServiceTax3", queryString, callbackForgetTotalPremiumNetOfServiceTax3);
	
	
}


function callbackForgetTotalPremiumNetOfServiceTax3()
{

//alert("in Call Back");
if (xmlHttp.readyState == 4) {
	if (xmlHttp.status == 200) {
		
		//alert(xmlHttp.responseText);
		
		var str = xmlHttp.responseText;
		
	//	alert(str);
		
		var w = str.split("|");
		var b=w[2];
		document.getElementsByName("premiumNetOfServiceTax")[b].value=w[0];
		document.getElementsByName("serviceTax")[b].value=w[1];
		
		//alert("After setting values");
		//document.getElementsByName("serviceTax")[w[2]].value=w[3];
	} else {
		alert("HTTP error " + xmlHttp.status + ": "
				+ xmlHttp.statusText);
	}
}

}

function getTotalPremiumNetOfServiceTax4(i){
	
	var sumInsINR = document.getElementsByName("sumInsINR")[i].value;
	var policyRate = document.getElementsByName("policyRate")[i].value;
	//var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
	var queryString = "sumInsINR="+sumInsINR+"&policyRate="+policyRate+"&i="+i;
	//alert(queryString);
	reqAjax("getTotalPremiumNetOfServiceTax4", queryString, callbackForgetTotalPremiumNetOfServiceTax4);
	
	
}


function callbackForgetTotalPremiumNetOfServiceTax4()
{

//alert("in Call Back");
if (xmlHttp.readyState == 4) {
	if (xmlHttp.status == 200) {
		
		//alert(xmlHttp.responseText);
		
		var str = xmlHttp.responseText;
		
	//	alert(str);
		
		var w = str.split("|");
		var b=w[2];
		document.getElementsByName("premiumNetOfServiceTax")[b].value=w[0];
		document.getElementsByName("serviceTax")[b].value=w[1];
		
		//alert("After setting values");
		//document.getElementsByName("serviceTax")[w[2]].value=w[3];
	} else {
		alert("HTTP error " + xmlHttp.status + ": "
				+ xmlHttp.statusText);
	}
}

}

function getTotalStampDuty(i){
	
	var premiumNetOfServiceTax = document.getElementsByName("premiumNetOfServiceTax")[i].value;
	var serviceTax = document.getElementsByName("serviceTax")[i].value;
	var stampDuty = document.getElementsByName("stampDuty")[i].value;
	//var terrorismPremium = document.getElementsByName("terrorismPremium")[i].value;
	var queryString = "premiumNetOfServiceTax="+premiumNetOfServiceTax+"&serviceTax="+serviceTax+"&stampDuty="+stampDuty+"&i="+i;
	//alert(queryString);
	reqAjax("getTotalStampDuty", queryString, callbackForgetTotalStampDuty);
	
	
}


function callbackForgetTotalStampDuty()
{

//alert("in Call Back");
if (xmlHttp.readyState == 4) {
	if (xmlHttp.status == 200) {
		
		alert(xmlHttp.responseText);
		
		var str = xmlHttp.responseText;
		
	//	alert(str);
		
		var w = str.split("|");
		var b=w[1];
		document.getElementsByName("totalPremiumPaid")[b].value=w[0];
		
		
		//alert("After setting values");
		//document.getElementsByName("serviceTax")[w[2]].value=w[3];
	} else {
		alert("HTTP error " + xmlHttp.status + ": "
				+ xmlHttp.statusText);
	}
}

}

	function doValidate() {
		
		var insuredName=document.forms["NewPolicyForm"]["insuredName"].value;
		if (insuredName==null || insuredName=="")
		  {
		  alert("Insured name must be filled out");
		  return false;
		  }
		
		var address=document.forms["NewPolicyForm"]["clientDetailForm.address"].value;
		if (address==null || address=="")
		  {
		  alert("Address  must be filled out");
		  return false;
		  }
		
		var pincode=document.forms["NewPolicyForm"]["clientDetailForm.pincode"].value;
		if (pincode==null || pincode=="")
		{
		  alert("Pincode must be filled out");
		  return false;
		 }
		else{
			
			if(pincode.length!=6)
			{
				alert("Pincode in Personal Details must have 6 digits.");
				return false;
			}
		}
		
		var contactPerson=document.forms["NewPolicyForm"]["clientDetailForm.contactPerson"].value;
		if (contactPerson==null || contactPerson=="")
		  {
		  alert("Contact person name must be filled out");
		  return false;
		  }
		
		var referencePerson=document.forms["NewPolicyForm"]["policyDetailForm.referencePerson"].value;
		if (referencePerson==null || referencePerson=="")
		  {
		  alert("Reference person name must be filled out");
		  return false;
		  }
		
		var officeNo=document.forms["NewPolicyForm"]["clientDetailForm.officeNo"].value;
		if (officeNo==null || officeNo=="")
		  {
		  alert("Office Number must be filled out");
		  return false;
		  }
		else{
			if(officeNo.length!=10)
			{
				alert("Office Number in Personal Details must have 10 digits.");
				return false;
			}
		}
		
		var DateOfInward=document.forms["NewPolicyForm"]["policyDetailForm.DateOfInward"].value;
		if (DateOfInward==null || DateOfInward=="")
		  {
		  alert("Date Of Inward must be filled out");
		  return false;
		  }
		
		var faxNo=document.forms["NewPolicyForm"]["clientDetailForm.faxNo"].value;
		if (faxNo==null || faxNo=="")
		  {
		  alert("Fax Number must be filled out");
		  return false;
		  }
		else{
			if(faxNo.length!=10)
			{
				alert("Office Number in Personal Details must have 10 digits.");
				return false;
			}
		}

		var riskStartDate=document.forms["NewPolicyForm"]["policyDetailForm.riskStartDate"].value;
		if (riskStartDate==null || riskStartDate=="")
		  {
		  alert("Risk Start Date must be filled out");
		  return false;
		  }
		
		var mobileNo=document.forms["NewPolicyForm"]["clientDetailForm.mobileNo"].value;
		if (mobileNo==null || mobileNo=="")
		  {
		  alert("Mobile Number must be filled out");
		  return false;
		  }
		else{
			if(mobileNo.length!=10)
			{
				alert("Mobile Number in Personal Details must have 10 digits.");
				return false;
			}
		}

		var riskEndDate=document.forms["NewPolicyForm"]["policyDetailForm.riskEndDate"].value;
		if (riskEndDate==null || riskEndDate=="")
		  {
		  alert("Risk End Date must be filled out");
		  return false;
		  }
		
		if(Date.parse(DateOfInward)>Date.parse(riskStartDate))
			{
				alert("Risk Start date should be greater than Date of Inward ");
				return false;
			}
			
		if(Date.parse(riskStartDate)>Date.parse(riskEndDate))
			{
				alert("Risk End date should be greater than Risk Start Date ");
				return false;
			}
	
		var g=document.forms["Burglary"]["risk_end_date"].value;
	
			if(Date.parse(f)>Date.parse(g))
			{
				alert("Risk End date should be greater than Risk Start Date ");
				return false;
			}
		
		var RmName=document.forms["NewPolicyForm"]["clientDetailForm.RmName"].value;
		if (RmName==null || RmName=="")
		  {
		  alert("RM Name must be filled out");
		  return false;
		  }
		
		var policyNo=document.forms["NewPolicyForm"]["policyDetailForm.policyNo"].value;
		if (policyNo==null || policyNo=="")
		  {
		  alert("Policy Number must be filled out");
		  return false;
		  }
		
		var email=document.forms["NewPolicyForm"]["clientDetailForm.email"].value;
		if (email==null || email=="")
		  {
		  alert("Email Id must be filled out");
		  return false;
		  }
		else{
		var atpos=email.indexOf("@");
		var dotpos=email.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
		  {
		  alert("Not a valid e-mail address");
		  return false;
		  }
		}
		
		var ExpirypolicyNo=document.forms["NewPolicyForm"]["policyDetailForm.ExpirypolicyNo"].value;
		if (ExpirypolicyNo==null || ExpirypolicyNo=="")
		  {
		  alert("Expiry Policy No must be filled out");
		  return false;
		  }
		
		var riskLocation=document.forms["NewPolicyForm"]["policyDetailForm.riskLocation"].value;
		if (riskLocation==null || riskLocation=="")
		  {
		  alert("Risk Location must be filled out");
		  return false;
		  }
		
		var riskAddress=document.forms["NewPolicyForm"]["policyDetailForm.riskAddress"].value;
		if (riskAddress==null || riskAddress=="")
		  {
		  alert("Risk Address must be filled out");
		  return false;
		  }
		
		
		var city=document.forms["NewPolicyForm"]["policyDetailForm.city"].value;
		if (city==null || city=="")
		  {
		  alert("City must be filled out");
		  return false;
		  }
		
		var state=document.forms["NewPolicyForm"]["policyDetailForm.state"].value;
		if (state==null || state=="")
		  {
		  alert("State must be filled out");
		  return false;
		  }
		
		var country=document.forms["NewPolicyForm"]["policyDetailForm.country"].value;
		if (country==null || country=="")
		  {
		  alert("Country must be filled out");
		  return false;
		  }
		
		var riskPincode=document.forms["NewPolicyForm"]["policyDetailForm.riskPincode"].value;
		if (riskPincode==null || riskPincode=="")
		  {
		  alert("Pincode must be filled out");
		  return false;
		  }
		
		var percentage=document.forms["NewPolicyForm"]["percentage"].value;
		if (percentage==null || percentage=="")
		  {
		  alert("Percentage must be filled out");
		  return false;
		  }
		
		var shareOfCompany=document.forms["NewPolicyForm"]["shareOfCompany"].value;
		if (shareOfCompany==null || shareOfCompany=="")
		  {
		  alert("Share Of Company must be filled out");
		  return false;
		  }
		
		var chequeOrDDNo=document.forms["NewPolicyForm"]["chequeOrDDNo"].value;
		if (chequeOrDDNo==null || chequeOrDDNo=="")
		  {
		  alert("Cheque Or DD No must be filled out");
		  return false;
		  }
		
		var chequeOrDDDate=document.forms["NewPolicyForm"]["chequeOrDDDate"].value;
		if (chequeOrDDDate==null || chequeOrDDDate=="")
		  {
		  alert("Cheque Or DD Date must be filled out");
		  return false;
		  }
		
		var chequeOrDDAmount=document.forms["NewPolicyForm"]["chequeOrDDAmount"].value;
		if (chequeOrDDAmount==null || chequeOrDDAmount=="")
		  {
		  alert("Cheque Or DD Amount must be filled out");
		  return false;
		  }
		
		var sumInsINR = document.getElementsByName("sumInsINR").length;
		for ( var i = 0; i < sumInsINR; i++) {
			var sumInsINR1 = document.getElementsByName("sumInsINR")[i].value;
			if (sumInsINR1 == null || sumInsINR1 == '') {
				alert("Please Provide SumInsINR");
				return false;
			}
		}
		
		
		var policyRate = document.getElementsByName("policyRate").length;
		for ( var i = 0; i < policyRate; i++) {
			var policyRate1 = document.getElementsByName("policyRate")[i].value;
			if (policyRate1 == null || policyRate1 == '') {
				alert("Please Provide Policy Rate");
				return false;
			}
		}
		
		var stampDuty = document.getElementsByName("stampDuty").length;
		for ( var i = 0; i < stampDuty; i++) {
			var stampDuty1 = document.getElementsByName("stampDuty")[i].value;
			if (stampDuty1 == null || stampDuty1 == '') {
				alert("Please Provide Stamp Duty");
				return false;
			}
		}
		
		
		var serviceTax = document.getElementsByName("serviceTax").length;
		for ( var i = 0; i < serviceTax; i++) {
			var serviceTax1 = document.getElementsByName("serviceTax")[i].value;
			if (serviceTax1 == null || serviceTax1 == '') {
				alert("please provide service tax");
				return false;
			}
		}
		
		var discount = document.getElementsByName("discount").length;
		for ( var i = 0; i < discount; i++) {
			var discount1 = document.getElementsByName("discount")[i].value;
			if (discount1 == null || discount1 == '') {
				alert("Please Provide Discount");
				return false;
			}
		}
		
		var terrorismPremium = document.getElementsByName("terrorismPremium").length;
		for ( var i = 0; i < terrorismPremium; i++) {
			var terrorismPremium1 = document.getElementsByName("terrorismPremium")[i].value;
			if (terrorismPremium1 == null || terrorismPremium1 == '') {
				alert("Please Provide Terrorism Premium");
				return false;
			}
		}
		
		var no = document.getElementsByName("no").length;
		for ( var i = 0; i < no; i++) {
			var no1 = document.getElementsByName("no")[i].value;
			if (no1 == null || no1 == '') {
				alert("Please Provide Number.");
				return false;
			}
		}
		
		var dob = document.getElementsByName("dob").length;
		for ( var i = 0; i < dob; i++) {
			var dob1 = document.getElementsByName("dob")[i].value;
			if (dob1 == null || dob1 == '') {
				alert("Please Provide Date of Birth.");
				return false;
			}
		}
		
		var Details = document.getElementsByName("Details").length;
		for ( var i = 0; i < Details; i++) {
			var Details1 = document.getElementsByName("Details")[i].value;
			if (Details1 == null || Details1 == '') {
				alert("Please Provide Details");
				return false;
			}
		}
		
		var ownDamagePremium = document.getElementsByName("ownDamagePremium").length;
		for ( var i = 0; i < ownDamagePremium; i++) {
			var ownDamagePremium1 = document.getElementsByName("ownDamagePremium")[i].value;
			if (ownDamagePremium1 == null || ownDamagePremium1 == '') {
				alert("Please Provide Own Damage Premium");
				return false;
			}
		}
		
		var tpPremium = document.getElementsByName("tpPremium").length;
		for ( var i = 0; i < tpPremium; i++) {
			var tpPremium1 = document.getElementsByName("tpPremium")[i].value;
			if (tpPremium1 == null || tpPremium1 == '') {
				alert("Please Provide TP Premium");
				return false;
			}
		}
		
		var entry = document.getElementsByName("entry").length;
		for ( var i = 0; i < entry; i++) {
			var entry1 = document.getElementsByName("entry")[i].value;
			if (entry1 == null || entry1 == '') {
				alert("Please Provide Entry");
				return false;
			}
		}
		
		var number = document.getElementsByName("number").length;
		for ( var i = 0; i < number; i++) {
			var number1 = document.getElementsByName("number")[i].value;
			if (number1 == null || number1 == '') {
				alert("Please Provide Number");
				return false;
			}
		}
		
		var salaryPm = document.getElementsByName("salaryPm").length;
		for ( var i = 0; i < salaryPm; i++) {
			var salaryPm1 = document.getElementsByName("salaryPm")[i].value;
			if (salaryPm1 == null || salaryPm1 == '') {
				alert("Please Provide Salary PM");
				return false;
			}
		}
		
		var rate = document.getElementsByName("rate").length;
		for ( var i = 0; i < rate; i++) {
			var rate1 = document.getElementsByName("rate")[i].value;
			if (rate1 == null || rate1 == '') {
				alert("Please Provide Rate");
				return false;
			}
		}
	
		return false;
	}
	function GetTotal() {
		alert("Ok");
		var count=document.getElementsByName("sumInsINR").length;
		for(var i=0 ; i< count ; i++)
		{
			
			var sumInsINR = document.getElementsByName("sumInsINR")[i].value;
			var policyRate = document.getElementsByName("policyRate")[i].value;
			var premiumNetOfServiceTax =  (sumInsINR* policyRate)/100;
			var serviceTax= premiumNetOfServiceTax*0.1236;
			document.getElementsByName("premiumNetOfServiceTax")[i].value = premiumNetOfServiceTax;
			document.getElementsByName("serviceTax")[i].value=serviceTax;
			
		}
	}
	function GetFinalTotal(){
	
		
		var count=document.getElementsByName("stampDuty").length;
		alert(count);
		for (var i=0 ; i<count ; i++)
		{
			if(document.getElementsByName("sumInsINR")[i].value=="00"){
				alert("In if");
				
				for(var j=i ; j>0 ; j--){
					var t=j;
					
					 document.getElementsByName("sumInsINR")[j].value=0;
					 document.getElementsByName("premiumNetOfServiceTax")[j].value=0;
					 document.getElementsByName("serviceTax")[j].value=0;
					 document.getElementsByName("stampDuty")[j].value=0;
					 document.getElementsByName("totalPremiumPaid")[j].value=0; 
					 
					var sumInsINR = document.getElementsByName("sumInsINR")[j-1].value;
					var policyRate = document.getElementsByName("policyRate")[j-1].value;
					var premiumNetOfServiceTax =  (sumInsINR* policyRate)/100;
					var serviceTax= premiumNetOfServiceTax*0.1236;
					/* document.getElementsByName("premiumNetOfServiceTax")[j].value = premiumNetOfServiceTax;
					document.getElementsByName("serviceTax")[j].value=serviceTax; */
					var stampDuty = document.getElementsByName("stampDuty")[j-1].value;
					var u = (premiumNetOfServiceTax + serviceTax);
					var totalPremiumPaid = Number(u) + Number(stampDuty);
					 document.getElementsByName("sumInsINR")[t].value=document.getElementsByName("sumInsINR")[t].value+sumInsINR;
					 document.getElementsByName("premiumNetOfServiceTax")[t].value=document.getElementsByName("premiumNetOfServiceTax")[t].value+premiumNetOfServiceTax;
					 document.getElementsByName("serviceTax")[t].value=document.getElementsByName("serviceTax")[t].value+serviceTax;
					 document.getElementsByName("stampDuty")[t].value=document.getElementsByName("stampDuty")[t].value+stampDuty;
					document.getElementsByName("totalPremiumPaid")[t].value=document.getElementsByName("totalPremiumPaid")[t].value+totalPremiumPaid;
					
				}
				
			}
			else{
			var sumInsINR = document.getElementsByName("sumInsINR")[i].value;
			var policyRate = document.getElementsByName("policyRate")[i].value;
			var premiumNetOfServiceTax =  (sumInsINR* policyRate)/100;
			var serviceTax= premiumNetOfServiceTax*0.1236;
			var stampDuty = document.getElementsByName("stampDuty")[i].value;
			var t = (premiumNetOfServiceTax + serviceTax);
			var totalPremiumPaid = Number(t) + Number(stampDuty);
			document.getElementsByName("totalPremiumPaid")[i].value=totalPremiumPaid;
			}
		/* 	document.getElementsByName("sumInsINR")[2].value=document.getElementsByName("sumInsINR")[2].value+Number(sumInsINR);
			document.getElementsByName("premiumNetOfServiceTax")[3].value=document.getElementsByName("premiumNetOfServiceTax")[2].value+Number(premiumNetOfServiceTax);
			document.getElementsByName("serviceTax")[2].value=document.getElementsByName("serviceTax")[2].value+Number(serviceTax);
			document.getElementsByName("stampDuty")[2].value=document.getElementsByName("stampDuty")[2].value+Number(stampDuty);
			document.getElementsByName("totalPremiumPaid")[2].value=document.getElementsByName("totalPremiumPaid")[2].value+Number(totalPremiumPaid); */
			
			
		}
		
	}
	function getBrokerageAmountForMotor(i){
		
		var count=document.getElementsByName("shareOfCompany").length;
		/* alert(count); */
		for (var i=0 ; i<count ; i++){
			
			document.getElementsByName("amount")[i].value=Number(((document.getElementById("total1").value * document.getElementsByName("shareOfCompany")[i].value)/100)*
					(document.getElementsByName("percentage")[i].value)/100); 
		}
		
		
	}
	function getBrokerageAmountForFire(i){
		
		var count=document.getElementsByName("shareOfCompany").length;
		/* alert(count); */
		for (var i=0 ; i<count ; i++){
			
			document.getElementsByName("amount")[i].value=Number(((document.getElementById("total7").value * document.getElementsByName("shareOfCompany")[i].value)/100)*
					(document.getElementsByName("percentage")[i].value)/100 + ((document.getElementById("total8").value * document.getElementsByName("shareOfCompany")[i].value)/100)*(document.getElementsByName("percentage")[i].value)/100); 
		}
		
		
	}
	function getBrokerageAmountForMarine(i){
		
		var count=document.getElementsByName("shareOfCompany").length;
		/* alert(count); */
		for (var i=0 ; i<count ; i++){
			
			document.getElementsByName("amount")[i].value=Number(((document.getElementById("total3").value * document.getElementsByName("shareOfCompany")[i].value)/100)*
					(document.getElementsByName("percentage")[i].value)/100 ); 
		}
		
		
	}

</script>
<div id="top-panel">
	<div id="panel">
		<ul>

		</ul>
	</div>
</div>


<div id="wrapper">
	<div id="content">
		<div id="box">
			<s:div>
				<h1>
					<center>New Policy Details</center>
				</h1>
			</s:div>

			<s:div>
				<s:form action="insertPolicy" name="NewPolicyForm" method="POST">

					<s:div>
						<table border='0' align="center"
							style="width: 100%; background-color: white;" cellpadding="4"
							cellspacing="2">
							<tr style="background-color: darkblue">
								<th colspan="4" style="color: white"><b><center>Personal
											Details</center></b></th>

								<th colspan="4" style="color: white"><b><center>Policy
											Details</center></b></th>
							</tr>
							<tr>
								<td colspan="2">Insured Name:</td>
								<td colspan="2">
									<%-- <s:textfield
							name="clientDetailForm.insuredName"
							value="%{clientDetailForm.insuredName}"  id="client" theme="simple" /> 
					 --%> <sx:autocompleter name="insuredName" autoComplete="true"
										id="auto" list="list" onclick="test()" showDownArrow="false" />

								</td>
								<td colspan="2">Type of Policy:</td>
								<td colspan="2">
									<%-- <sx:autocompleter name="policyName"
							autoComplete="true" list="policyList" onfocus="test()" />
					 --%> <s:select list="policyList" name="policyName" theme="simple"
										cssStyle="width:250px" headerValue="select" id="demo1"
										onchange="return demo();"></s:select> <%-- <s:textfield
							name="policyDetailForm.policyName"
							value="%{policyDetailForm.policyName}" theme="simple" /> --%>
								</td>
							</tr>
							<tr>
								<td colspan="2">Address of Communication:</td>
								<td colspan="2"><s:textfield
										name="clientDetailForm.address"
										value="%{clientDetailForm.address}" theme="simple" />
								<td colspan="2">Name of Insurance Company:</td>
								<td colspan="2"><s:select
										name="policyDetailForm.insuranceCompany"
										list="insurancCompanyList"
										theme="simple"></s:select> <%-- 
								<s:textfield
										name="policyDetailForm.insuranceCompany"
										value="%{policyDetailForm.insuranceCompany}" theme="simple"
										onfocus="test();" /> --%></td>
							</tr>
							<tr>
								<td colspan="2">Pincode:</td>
								<td colspan="2"><s:textfield
										name="clientDetailForm.pincode"
										value="%{clientDetailForm.pincode}" theme="simple" />
								<td colspan="2">Branch / DO of Insurance Company:</td>
								<td colspan="2"><s:select name="policyDetailForm.branch"
										list="insurancCompanyList"
										theme="simple"></s:select> <%-- <s:textfield name=""
										value="%{policyDetailForm.branch}" theme="simple" /> --%></td>
							</tr>
							<tr>
								<td colspan="2">Name of contact Person:</td>
								<td colspan="2"><s:textfield
										name="clientDetailForm.contactPerson"
										value="%{clientDetailForm.contactPerson}" theme="simple" />
								<td colspan="2">Reference Person Name:</td>
								<td colspan="2"><s:select
										name="policyDetailForm.referencePerson"
										list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
										theme="simple"></s:select> <%-- <s:textfield
										name="policyDetailForm.referencePerson"
										value="%{policyDetailForm.referencePerson}" theme="simple" /> --%></td>
							</tr>
							<tr>

								<td colspan="2">Office No:</td>
								<td colspan="2"><s:textfield
										name="clientDetailForm.officeNo"
										value="%{clientDetailForm.officeNo}" theme="simple" />
								<td colspan="2">Date of Inward:</td>
								<td colspan="2"><s:textfield
										name="policyDetailForm.DateOfInward"
										value="%{policyDetailForm.DateOfInward}" readonly="true"
										theme="simple" cssClass="tcal" size="23" /></td>
							</tr>
							<tr>
								<td colspan="2">Fax No:</td>
								<td colspan="2"><s:textfield name="clientDetailForm.faxNo"
										value="%{clientDetailForm.faxNo}" theme="simple" />
								<td colspan="2">Risk Start Date:</td>
								<td colspan="2"><s:textfield
										name="policyDetailForm.riskStartDate"
										value="%{policyDetailForm.riskStartDate}" readonly="true"
										theme="simple" cssClass="tcal" id="cal" size="23" /></td>
							</tr>
							<tr>
								<td colspan="2">Mobile No:</td>
								<td colspan="2"><s:textfield
										name="clientDetailForm.mobileNo"
										value="%{clientDetailForm.mobileNo}" theme="simple" />
								<td colspan="2">Risk End Date:</td>
								<td colspan="2"><s:textfield
										name="policyDetailForm.riskEndDate"
										value="%{policyDetailForm.riskEndDate}" readonly="true"
										theme="simple" cssClass="tcal" size="23" /></td>
							</tr>
							<tr>

								<td colspan="2">RM Name:</td>
								<td colspan="2"><s:select name="clientDetailForm.RmName"
										list="RmName" theme="simple"></s:select> <%-- <s:textfield name="clientDetailForm.RmName"
										value="%{clientDetailForm.RmName}" theme="simple" /> --%></td>

								<td colspan="2">Policy No / Receipt No:</td>
								<td colspan="2"><s:textfield
										name="policyDetailForm.policyNo"
										value="%{policyDetailForm.policyNo}" theme="simple" />
							</tr>
							<tr>
								<td colspan="2">Email Id:</td>
								<td colspan="2"><s:textfield name="clientDetailForm.email"
										value="%{clientDetailForm.email}" theme="simple" />
								<td colspan="2">Expiring policy no:</td>
								<td colspan="2"><s:textfield
										name="policyDetailForm.ExpirypolicyNo"
										value="%{policyDetailForm.ExpirypolicyNo}" theme="simple" />
							</tr>


							<%-- <tr style="background-color: darkblue">
								<td colspan="8" style="color: white"><center>
										<b>Risk Location</b>
									</center></td>
							</tr>
							<tr>
								<td>Location name</td>
								<td colspan="3">Address</td>
								<td>City</td>
								<td>State</td>
								<td>Country</td>
								<td>Pincode</td>

							</tr>
							<tr>
								<td><s:textfield name="policyDetailForm.riskLocation"
										value="%{policyDetailForm.riskLocation}" theme="simple" /></td>
								<td colspan="3"><s:textfield
										name="policyDetailForm.riskAddress"
										value="%{policyDetailForm.riskAddress}" theme="simple" /></td>
								<td><s:textfield name="policyDetailForm.city"
										value="%{policyDetailForm.city}" theme="simple" /></td>
								<td><s:textfield name="policyDetailForm.state"
										value="%{policyDetailForm.state}" theme="simple" /></td>
								<td><s:textfield name="policyDetailForm.country"
										value="%{policyDetailForm.country}" theme="simple" /></td>
								<td><s:textfield name="policyDetailForm.riskPincode"
										value="%{policyDetailForm.riskPincode}" theme="simple" /></td>
							</tr> --%>

						</table>

						<table style="width: 100%; background-color: white"
							cellpadding="4" cellspacing="2">
							<div id="Loading" style="display: none">

								<center>
									<img src="./img/ajax-loader.gif" />
								</center>

							</div>
							<tr>
								<td>
									<%--<%@ include file="./div.jsp" %> --%> <%-- 			<%@ include file="./div_part_one.jsp" %> --%>

									<%-- <%@ include file="./div_part_two.jsp" %> --%> <%-- <jsp:include page="div_part_one.jsp" />

			<jsp:include page="div_part_two.jsp" />

			<jsp:include page="div_part_three.jsp" /> --%>

									<div id="result" style="display: none; width: 100%"></div>
								</td>
							</tr>
						</table>

						<table style="width: 100%; background-color: white"
							cellpadding="4" cellspacing="2">


						
						

							<tr style="background-color: darkblue">
								<td colspan="8" style="color: white"><b><center>Payment
											Mode</center></b></td>
							</tr>
							<tr>
								<td colspan="2">Mode Of Payment</td>
							<tr>

								<td colspan="2"><s:select name="modeOfPayment"
										list="#{'cheque':'cheque', 'Demand Draft':'Demand Draft'}"
										theme="simple">
									</s:select></td>
							<tr style="background-color: darkblue">
								<td colspan="8" style="color: white"><b><center>Bank
											Payment Details</center></b></td>
							</tr>
							<tr>

								<td colspan="2">Bank Name</td>
								<td colspan="2">Cheque / DD No</td>
								<td colspan="2">Cheque / DD Date</td>
								<td colspan="2">Cheque / DD / Cash Amout</td>
							<tr>




								<td colspan="2"><s:select name="bankName"
										list="bankList"
										theme="simple">
									</s:select></td>
								<td colspan="2"><s:textfield name="chequeOrDDNo"
										theme="simple" /></td>

								<td colspan="2"><s:textfield name="chequeOrDDDate"
										theme="simple" cssClass="tcal" /></td>

								<td colspan="2"><s:textfield name="chequeOrDDAmount"
										theme="simple" /></td>
							</tr>

							<tr style="background-color: darkblue">
								<td colspan="8" style="color: white"><b><center>CD
											Account Payment Details</center></b></td>
							</tr>
							<tr>

								<td colspan="2">Bank Name</td>
								<td colspan="2">Cheque / DD No</td>
								<td colspan="2">Cheque / DD Date</td>
								<td colspan="2">Cheque / DD / Cash Amout</td>
							<tr>




								<td colspan="2"><s:select name="bankName"
										list="bankList"
										theme="simple">
									</s:select></td>
								<td colspan="2"><s:textfield name="chequeOrDDNo"
										theme="simple" /></td>

								<td colspan="2"><s:textfield name="chequeOrDDDate"
										theme="simple" cssClass="tcal" /></td>

								<td colspan="2"><s:textfield name="chequeOrDDAmount"
										theme="simple" /></td>
							</tr>
						</table>
						<table border="0" align="center"
							style="background-color: white; width: 100%" cellpadding="4"
							cellspacing="2">
							<tr>
								<td><center>
										<s:hidden name="counter" value="2" theme="simple" />
										<s:submit value="ADD" id="button1" theme="simple"
											onclick="return doValidate();" />
									</center></td>
								<td><center></center></td>
							</tr>
						</table>

					</s:div>


				</s:form>
			</s:div>

		</div>
	</div>
</div>
<%@ include file="./FooterAdmin.jsp"%>
