package com.stackroute.keepnote.model;

import javax.persistence.*;
import java.time.LocalDateTime;



/*
 * The class "Note" will be acting as the data model for the note Table in the database. Please
 * note that this class is annotated with @Entity annotation. Hibernate will scan all package for 
 * any Java objects annotated with the @Entity annotation. If it finds any, then it will begin the 
 * process of looking through that particular Java object to recreate it as a table in your database.
 */
@Entity
public class Note {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "noteId")
	private int NoteId;

	@Column(name = "noteTitle")
	private String NoteTitle;

	@Column(name = "noteContent")
	private String NoteContent;

	@Column(name = "noteStatus")
	private String NoteStatus;

	@Column(name = "CreatedAt")
	private LocalDateTime createdAt=LocalDateTime.now();

	public Note() {

	}

	public Note(int i, String string, String string2, String string3, LocalDateTime localDate) {
		this.NoteId=i;
		this.NoteTitle=string;
		this.NoteContent=string2;
		this.NoteStatus=string3;
		this.createdAt=localDate;
	}

	
	/* Override the toString() method */

	

	public String getNoteTitle() {
		return NoteTitle;
	}

	public int getNoteId() {
		return NoteId;
	}

	public void setNoteId(int noteId) {
		NoteId = noteId;
	}

	public void setNoteTitle(String noteTitle) {
		NoteTitle = noteTitle;
	}

	public String getNoteContent() {
		return NoteContent;
	}

	public void setNoteContent(String noteContent) {
		NoteContent = noteContent;
	}

	public String getNoteStatus() {
		return NoteStatus;
	}

	public void setNoteStatus(String noteStatus) {
		NoteStatus = noteStatus;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	@Override
	public String toString() {
		return "Note{" +
				"noteId=" + NoteId +
				", noteTitle='" + NoteTitle + '\'' +
				", noteContent='" + NoteContent + '\'' +
				", noteStatus='" + NoteStatus + '\'' +
				", createdAt=" + createdAt +
				'}';
	}

}
