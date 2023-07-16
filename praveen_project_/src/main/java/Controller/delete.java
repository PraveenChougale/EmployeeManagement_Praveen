package Controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;

@WebServlet("/delete")
public class delete extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));//defualt getparameter its is in String format
		
		
//		//session validation
//		if(req.getSession().getAttribute("id")==null)
//		{
//			res.getWriter().print("<h1>login again</h1>");
//			req.getRequestDispatcher("login.html").include(req, res);
//		}//if session is valid then we can delete the data
//		else{
			
			
		//this code for fetch  particuler email after pressing delete button and delete that row from table
		UserDao u=new UserDao();
		User user=u.find(id);
		u.delete(user);
		
		
		//this code for after deleting data again it will came same page
		List<User> list=u.fechaAll();
	     req.setAttribute("list", list);
			    		
		req.getRequestDispatcher("result.jsp").forward(req, res);
//		}
		
	}
	
//url rewriting is to  carry the value to jsp 
	
}
