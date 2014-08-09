<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ attribute name="name" required="true" rtexprvalue="true" description="Name of corresponding property in bean object"%>
<%@ attribute name="label" required="true" rtexprvalue="true"
	description="Label appears in red color if input is considered as invalid after submission"%>
<%@ attribute name="forId" required="true" rtexprvalue="true"
	description="Name of corresponding property in bean object"%>
<%@ attribute name="placeholder" required="true" rtexprvalue="true"
	description="Name of corresponding property in bean object"%>


<spring:bind path="${name}">

	<div class="form-group ${status.error ? 'has-error' : ''}" id="${name}">
		<label for="${forId}" class="col-lg-4 col-sm-4 control-label">${label}</label>

		<div class="col-lg-8">
			<form:input path="${name}" cssClass="form-control" id="${forId}" placeholder="${placeholder}" />
			<form:errors path="${name}" cssStyle="color: #ff0000;" />
		</div>
	</div>

</spring:bind>