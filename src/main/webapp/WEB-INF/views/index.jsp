<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8" isELIgnored="false" %>
<head>
<title>KEEPNOTE-2</title>
</head>

<body>
              <table>
         				<tr>
         					<th>Note id</th>
         					<th>Title</th>
         					<th>content</th>
         					<th>Status</th>
                            <th>CreatedAt</th>
         				</tr>

         				<c:forEach var="tempNote" items="${notes}">
                             <c:url var="updateLink" value="/updateNote">
         					<c:param name="NoteID" value="${tempNote.noteId}" />
         					</c:url>
         				<c:url var="deleteLink" value="/deleteNote">
                         <c:param name="NoteID" value="${tempNote.noteId}" />
                         </c:url>
         					<tr>
         						<td> ${tempNote.noteId} </td>
         						<td> ${tempNote.noteTitle} </td>
         						<td> ${tempNote.noteContent} </td>
         					    <td> ${tempNote.noteStatus} </td>
                                <td> ${tempNote.createdAt} </td>
         						<td><a href="${updateLink}">Update</a></td>
         						<td><a href="${deleteLink}">Delete</a></td>
         					</tr>

         				</c:forEach>

         </table>

         <script>
         function newDoc() {
           window.location.assign("addNote")
         }
         </script>

         <input type="button" value="AddNote" onclick="newDoc()">





	<!-- display all existing notes in a tabular structure with Title,Content,Status, Created Date and Action -->
</body>

