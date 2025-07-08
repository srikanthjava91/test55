package com.jdbcapp;

public class Employee {

	private int empid;
	private String firstname;
	private String lastname;
	private int age;

	public Employee() {
		System.out.println("Employee Constructor called ");
	}

	public Employee(int empid, String firstname, String lastname, int age) {
		super();
		this.empid = empid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
	}

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
