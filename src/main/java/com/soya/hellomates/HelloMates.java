package com.soya.hellomates;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Demo class
 *
 * @author soya
 * @date 2016/10/31
 */
@WebServlet("/hello")
public class HelloMates  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTIme=dateFormat.format(new Date());
		req.setAttribute("currentTime",currentTIme+"zzz");
		req.getRequestDispatcher("/WEB-INF/jsp/hello.jsp").forward(req,resp);
	}
}
