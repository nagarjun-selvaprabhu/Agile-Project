package com.bisn.City_Classified_And_Search.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bisn.City_Classified_And_Search.db.DBHandler;
import com.bisn.City_Classified_And_Search.model.Login;
import com.bisn.City_Classified_And_Search.model.User;

@Service
public class UserService {
	@Autowired
	DBHandler db;

	public void updateuser(boolean role, int id) {
		try {
			String sql = "";
			if (role == true) {
				sql = "update roles set e_req=1,e_role='admin' where e_id=?";
			}
			if (role == false) {
				sql = "update roles set e_req=-1,e_role='invalid' where e_id=?";
			}
			
			PreparedStatement stmt=db.getConnection().prepareStatement(sql);  
			stmt.setInt(1,id);//1 specifies the first parameter in the query  
			stmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	//
	public void updateRegister(User user, Login login) {
		// TODO Auto-generated method stub
		try {
			int userId = user.getId();
			String firstName = user.getFirstName();
			String lastname = user.getLastName();
			String email = user.getEmail();
			String password = user.getPassword();
			Statement st = db.getConnection().createStatement();

			if (user.isRole()) {
				st.executeUpdate("insert into register values(" + userId + ",'" + firstName + "','" + lastname + "','"
						+ email + "'," + true + ",'" + password + "')");
				st.executeUpdate("insert into roles values(" + userId + "," + 0 + ",'adminreq')");
				login.setType("adminreq");

				// st.executeUpdate("insert into roles
				// values("+user.getId()+","+true+",'user')");
			} else {
				st.executeUpdate("insert into register values(" + userId + ",'" + firstName + "','" + lastname + "','"
						+ email + "'," + false + ",'" + password + "')");

				st.executeUpdate("insert into roles values(" + userId + "," + 1 + ",'user')");
				login.setType("user");
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public ArrayList<User> readUser() throws SQLException, ClassNotFoundException {
		ArrayList<User> obj = new ArrayList<User>();
		Statement st = db.getConnection().createStatement();
		String sql = "select * from register";
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5),
					rs.getString(6));
			obj.add(user);
		}

		return obj;
	}

	public ArrayList<User> readAdminRequest() {
		ArrayList<User> list = new ArrayList<User>();
		try {

			PreparedStatement stmt = db.getConnection().prepareStatement(
					"select id,firstName from register where id in (select e_id from roles where e_req=?)");
			stmt.setInt(1, 0);// 1 specifies the first parameter in the query
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt(1));
				user.setFirstName(rs.getString(2));
				list.add(user);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	public void checkLogin(Login login) {
		// TODO Auto-generated method stub

		PreparedStatement stmt;
		try {
			stmt = db.getConnection().prepareStatement("select e_role from roles where e_id=?");
			stmt.setInt(1, Integer.parseInt(login.getUserName()));// 1 specifies the first parameter in the query

			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				login.setType(rs.getString(1));

			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public User getUserObject(int id) {
		User user=new User();
		try {
		PreparedStatement stmt = db.getConnection().prepareStatement(
				"select * from register where id=? ");
		stmt.setInt(1, id);// 1 specifies the first parameter in the query
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			user.setId(rs.getInt(1));
			user.setFirstName(rs.getString(1));
			user.setLastName(rs.getString(3));
			user.setEmail(rs.getString(4));
			user.setPassword(rs.getString(6));
		}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return user;
	}

}
