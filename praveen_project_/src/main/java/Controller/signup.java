package Controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import dao.UserDao;
import dto.User;

@WebServlet("/sign_up")
public class signup extends GenericServlet {
	public static void main(String[] args) {
		
	}
	@Override//this is annotation to overide the service method and run opeartion
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		User user=new User();
		
		user.setName(req.getParameter("name"));
		user.setID(Integer.parseInt(req.getParameter("id")));
		user.setAddress(req.getParameter("address"));
		user.setGender(req.getParameter("male"));
		user.setSalary(Integer.parseInt(req.getParameter("salary")));
		LocalDate date= LocalDate.parse(req.getParameter("dob"));
		user.setDob(date);
		
		
		UserDao dao=new UserDao();
		dao.save(user);
		List<User> list=dao.fechaAll();
        req.setAttribute("list", list);	    		
	    req.getRequestDispatcher("result.jsp").forward(req, res);
	
	}
}
