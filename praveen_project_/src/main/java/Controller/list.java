package Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import dao.UserDao;
import dto.User;

@WebServlet("/list")
public class list extends GenericServlet {
	public static void main(String[] args) {
		
	}
	@Override//this is annotation to overide the service method and run opeartion
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		User user=new User();
		
		
		
		UserDao dao=new UserDao();
		
		List<User> list=dao.fechaAll();
        req.setAttribute("list", list);	    		
	    req.getRequestDispatcher("result.jsp").forward(req, res);
	
	}
}