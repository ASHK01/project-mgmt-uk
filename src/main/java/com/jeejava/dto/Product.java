package com.jeejava.dto;

public class Product {

	private int id;
	private String name;
	private double price;
	private String bugId;
	private String location;
	private String status;
	private String type;
	private String severity;
	private String bugDescription;
	private String foundBy;
	private String againstVersion;
	private String dateFound;
	private String assignedTo;
	private String fixDescription;

	public Product() {
	}

	public Product(int id, String name, double price) {
		this.id = id;
		this.name = name;
		this.price = price;
	}
	

	public Product(int id, String location, String status, String type, String severity,
			String bugDescription, String foundBy, String againstVersion, String dateFound, String assignedTo,
			String fixDescription) {
		super();
		this.id = id;
		this.location = location;
		this.status = status;
		this.type = type;
		this.severity = severity;
		this.bugDescription = bugDescription;
		this.foundBy = foundBy;
		this.againstVersion = againstVersion;
		this.dateFound = dateFound;
		this.assignedTo = assignedTo;
		this.fixDescription = fixDescription;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id != other.id)
			return false;
		return true;
	}

	public String getBugId() {
		return bugId;
	}

	public void setBugId(String bugId) {
		this.bugId = bugId;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSeverity() {
		return severity;
	}

	public void setSeverity(String severity) {
		this.severity = severity;
	}

	public String getBugDescription() {
		return bugDescription;
	}

	public void setBugDescription(String bugDescription) {
		this.bugDescription = bugDescription;
	}

	public String getFoundBy() {
		return foundBy;
	}

	public void setFoundBy(String foundBy) {
		this.foundBy = foundBy;
	}

	public String getAgainstVersion() {
		return againstVersion;
	}

	public void setAgainstVersion(String againstVersion) {
		this.againstVersion = againstVersion;
	}

	public String getDateFound() {
		return dateFound;
	}

	public void setDateFound(String dateFound) {
		this.dateFound = dateFound;
	}

	public String getAssignedTo() {
		return assignedTo;
	}

	public void setAssignedTo(String assignedTo) {
		this.assignedTo = assignedTo;
	}

	public String getFixDescription() {
		return fixDescription;
	}

	public void setFixDescription(String fixDescription) {
		this.fixDescription = fixDescription;
	}

	
	
}
