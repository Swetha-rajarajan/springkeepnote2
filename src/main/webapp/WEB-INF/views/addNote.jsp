<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="saveNote" modelAttribute="note" method="POST">

			<table>
				<tbody>
					<tr>
                		<td><label>id:</label></td>
               			<td><form:input path="noteId" /></td>
                	</tr>
					<tr>
						<td><label>Title:</label></td>
						<td><form:input path="noteTitle" /></td>
					</tr>
					<tr>
                		<td><label>Content:</label></td>
                		<td><form:input path="noteContent" /></td>
                	</tr>

					<tr>
						<td><label>Status:</label></td>
						<td><form:input path="noteStatus" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save"/></td>
					</tr>


				</tbody>
			</table>


		</form:form>