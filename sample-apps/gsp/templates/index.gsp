<html>
	<head>
		<title>GSP example</title>
		<meta name="keywords" content="gsp,example">
	</head>
	<body>
		<h3>Accessing the model</h3>
		Hello, ${name}.
		<h3>Iteration with a scriptlet</h3>
		<% [1,2,3,4].each { num -> %>
			<p><%="#${num}" %></p>
		<%}%>
		<h3>Iteration with the &lt;each&gt; tag</h3>
		<g:each in="${[1,2,3]}" var="num">
			<p>Number ${num}</p>
		</g:each>
		<h3>Using a tag library</h3>
		<g:dateFormat format="dd-MM-yyyy" date="${new Date()}" />
		<g:render template="subtemplate" />
		<g:applyLayout name="sample">
		Text to decorate. 
		</g:applyLayout>
		<h3>Configuration</h3>
		<table>
		<g:each var="k,v" in="${grailsApplication.flatConfig}">
			<tr><td>${k}</td><td>${v}</td></tr>
		</g:each>
		<table>
	</body>
</html>