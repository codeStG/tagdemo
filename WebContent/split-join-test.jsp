<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<body>

<c:set var="data" value="Singapore,Tokyo,Mumbai,London" />

<h3>Split Demo</h3>

<c:set var="citiesArray" value="${fn:split(data, ',')}" />

<c:forEach var="city" items="${citiesArray}" >

	${city} <br />

</c:forEach>

<h3>Join Demo</h3>

<c:set var="citiesString" value="${fn:join(citiesArray, '*')}" />

Result of joining: ${citiesString}

</body>

</html>