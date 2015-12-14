package com;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Answers
 */
// @WebServlet("/Answers")
public class Answers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ArrayList<String> whatsapp_ans= new ArrayList<String>();
	ArrayList<String> love_ans = new ArrayList<String>();
	ArrayList<String> entered_words = new ArrayList<String>();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Answers() {
        super();
        /* Add all answers */
        whatsapp_ans.add("hmm");
        
        love_ans.add("string");

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String janus_ans_whatsapp = request.getParameter("whatsapp");
		String isReset = request.getParameter("reset");
		String type = request.getParameter("type");
		String reply = "failure";
		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		if (ipAddress == null) {
			ipAddress = request.getRemoteAddr();
		}
		   
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		String log_entry = "[" + dateFormat.format(cal.getTime()) + "]\t" + ipAddress + "\t" + janus_ans_whatsapp + "\n";

		try {
			File file = new File("log.txt");
			
			if (!file.exists()) {
				file.createNewFile();
			}
			
			FileWriter fw = new FileWriter(file, true);
			fw.write(log_entry);
			fw.close();
		} catch (IOException ioe) {
			System.err.println("IOException: " + ioe.getMessage());
		}
		
		
		if(isReset != null){
			entered_words.clear();
		}
		
		boolean validate = false;
		
		if(type != null && !type.isEmpty())
		switch (type) {
		case "whatsapp":
			
			if(whatsapp_ans.contains(janus_ans_whatsapp) && !entered_words.contains(janus_ans_whatsapp)){
				validate = true;
				entered_words.add(janus_ans_whatsapp);
				reply = "success";
			}
			break;

		case "love":
			if(love_ans.contains(janus_ans_whatsapp)){
				validate = true;
				reply = "success;<html message here>";
			}
			break;
			
		default:
			break;
		}
		
		response.setContentType("text/plain");
		
		if(validate)
			response.getWriter().write(reply);
		else
			response.getWriter().write(reply);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
