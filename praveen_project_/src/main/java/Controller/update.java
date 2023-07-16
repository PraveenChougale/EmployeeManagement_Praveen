package Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;
@WebServlet("/update")
public class update  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		User user=new User();
		user.setName(req.getParameter("name"));
		user.setID(Integer.parseInt(req.getParameter("id")));
		user.setAddress(req.getParameter("address"));
		user.setGender(req.getParameter("male"));
		user.setSalary(Integer.parseInt(req.getParameter("salary")));
		LocalDate date= LocalDate.parse(req.getParameter("dob"));
		user.setDob(date);
		
		
		UserDao dao=new UserDao();
		dao.update(user);
		
		
		List<User> list=dao.fechaAll();
	     req.setAttribute("list", list);	    		
		req.getRequestDispatcher("result.jsp").forward(req, res);
		
		
		
		
		
		
//		UserDao u=new UserDao();
//		
//		User user =new User();
//		List<User> l=u.fechaAll();
//		for(User list:l){
//			if(list.getEmail()==req.getParameter("email"))
//			{
//				user.setName(req.getParameter("name"));
//				user.setPassword(req.getParameter("password"));
//			}
//		}
//	
//		u.update(user);
//		
//		
//		List<User> list=u.fechaAll();
//	     req.setAttribute("list", list);	    		
//		req.getRequestDispatcher("result.jsp").forward(req, res);
//	 
//		
//	}
//	
	}
}
