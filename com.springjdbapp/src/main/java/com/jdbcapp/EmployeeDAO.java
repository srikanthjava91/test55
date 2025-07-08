package com.jdbcapp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EmployeeDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Employee emp) {
		String sql = "insert into Employee(eid,firstname,lastname,age) " + "values(" + emp.getEmpid() + ",'"
				+ emp.getFirstname() + "','" + emp.getLastname() + "'," + emp.getAge() + ")";
		return template.update(sql);
	}

	public int update(Employee emp) {
		String sql = "update Employee set lastname='" + emp.getLastname() + "', firstname='" + emp.getFirstname() + "'"
				+ ",age=" + emp.getAge() + " where eid=" + emp.getEmpid() + "";
		System.out.println(sql);
		return template.update(sql);
	}

	public int delete(int eid) {
		String sql = "delete from Employee where eid=" + eid + "";
		return template.update(sql);
	}

	public Employee getEmpById(int id) {
		String sql = "select * from Employee where eid=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Employee>(Employee.class));
	}

	public List<Employee> getEmployees() {
		String sql = "select * from Employee";

		List<Employee> empList = template.query(sql, new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setEmpid(rs.getInt(1));
				e.setLastname(rs.getString(2));
				e.setFirstname(rs.getString(3));
				e.setAge(rs.getInt(4));
				return e;
			}
		});
		return empList;
	}

}
