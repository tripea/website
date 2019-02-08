<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<script type="text/javascript" 
src="<c:url value="/springresources/spring/Spring.js" />"> 

</script> 
<script type="text/javascript" 
src="<c:url value="/springresources/spring/Spring-Dojo.js" />"> 

</script> 

<html> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<head> 
<style type="text/css"> 
div.hide { 
display: none; 
} 

div.show { 
display: block; 
} 

.error { 
color: #ff0000; 
} 

.errorblock { 
color: #000; 
background-color: #ffEEEE; 
border: 3px solid #ff0000; 
padding: 8px; 
margin: 16px; 
} 
</style> 
<title>User Profile Manager</title> 


<script type="text/javascript"> 
dojo.require("dijit.form.DateTextBox"); 
var roleId = null; 
dojo.addOnLoad(function() { 
roleId = dojo.byId('roleOption').value; 
//connect the events to the search option drop down list 
try { 
dojo.byId(roleId).className = "show"; 
} catch (e) { 
dojo.byId("noRole").className = "show"; 
} 
alert(roleId); 
}); 
</script> 
</head> 
<h1>User Profile Manager</h1> 
<body> 
<form:form method="POST" commandName="hotel"  action="addhotel"> 
<form:errors path="*" cssClass="errorblock" element="div" /> 
<div id="stylized" class="myform"> 

<table > 
<tr> 
<td ><label for="firstName">First name: </label> 
<td><c:out value="${userAccount.user.firstName}" /></td> 
</tr> 
<tr> 
<td ><label for="middleInit">middle: </label> 
<td><c:out value="${userAccount.user.middleInit}" /></td> 
</tr> 
<tr> 
<td ><label for="lastName">Last name: </label> 
<td><c:out value="${userAccount.user.lastName}" /></td> 
</tr> 
<tr> 
<td ><label for="email">Email: </label> 
<td><c:out value="${userAccount.user.email}" /></td> 
</tr> 
<tr> 
<td ><label for="UserType">What type of 
user are you? </label></td> 
<td><c:out value="${userAccount.user.roleDescription}" /></td> 

</tr> 
</table> 
</div> 

<div id="Agent" class="hide"> 
<table > 

<!-- agency required fields --> 

<tr> 
<td >Agency #:<span class="small">*</span> 
</td> 
<td><form:input path="account.agency" maxLength="5" /></td> 
</tr> 

<tr> 
<td ><label for="Agency Roles">Role <span 
class="small">*</span> 
</label></td> 
<td><form:select path="account.agencyRole" id="agencyRoleOptionselect" 
name="agencyRoleOptions"> 
<c:forEach items="${agencyRoleOptions}" var="roleVal"> 

<c:choose> 
<c:when 
test="${not empty userAccount.account.agencyRole && userAccount.account.agencyRole eq roleVal.key}"> 
<option value="${roleVal.key}" selected="true">${roleVal.value}</option> 
</c:when> 
<c:otherwise> 
<option value="${roleVal.key}">${roleVal.value}</option> 
</c:otherwise> 
</c:choose> 

</c:forEach> 
</form:select></td> 

</tr> 
<tr> 
<td >Producer #:</td> 
<td><form:input path="account.producer" maxLength="5" /></td> 
</tr> 
<tr> 
<td >Write Now Access:</td> 
<td><form:radiobutton path="account.writeNowAccess" value="Y" />Yes<form:radiobutton 
path="account.writeNowAccess" value="N" />No</td> 
</tr> 
<!-- end agency required fields --> 
</table> 
</div> 
<div id="Insured" class="hide"> 
<table > 

<!-- insured required fields --> 
<tr> 
<td >Policy #:<span class="small">*</span></td> 
<td><form:input path="account.policy" maxLength="10" /></td> 
</tr> 

</table> 
</div> 
<div id="PC" class="hide"> 
<table > 

<!-- payroll required fields --> 
<tr> 
<tr> 
<td >Payroll #:<span class="small">*</span></td> 
<td><form:input path="account.payrollNumber" maxLength="5" /></td> 
</tr> 

</table> 
</div> 
<div id="Internal" class="hide"> 
<table > 
<tr> 
<td >Write-Now Access:</td> 
<td><form:radiobutton path="account.writeNowAccessInternal" value="Y" />Yes 
<form:radiobutton path="account.writeNowAccessInternal" value="N" />No</td> 
</tr> 
<tr> 
<td >Underwriter #:</td> 
<td><form:input path="account.underwriter" maxLength="5" /></td> 
</tr> 

</table> 
</div> 
<div id="noRole" class="hide"></div> 
<div> 

<input id="submitButton" type="submit" value="Submit" /> 

</div> 
<form:hidden path="account.roleOption" id="roleOption" 
value="${userAccount.account.roleOption}" /> 

</form:form> 
</body> 
</html> 
