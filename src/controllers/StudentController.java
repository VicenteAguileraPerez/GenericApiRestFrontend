package controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;




@WebServlet("/studentController")
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public StudentController() {}
	
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String page = request.getParameter("page");
		System.out.println(page);
		if(page!=null && page.equals("create"))
		{
			try 
			{
					URL url = new URL("http://localhost:8081/academic/students?page=student&control-number=17040009");
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					con.setRequestMethod("GET");
					con.addRequestProperty("Accept", "application/json");
					
					if(con.getResponseCode() != 200)
					{
						//unchecked
						throw new RuntimeException("Failed: HTTP error code: "+ con.getResponseCode());
					}
					System.out.println(con.getResponseCode());
					
					BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream()));
					String temp = null;
					String result = null;
					while((temp = reader.readLine())!=null)
					{
						System.out.println(temp);
						result=temp;
					}
					//JSONObject object = new JSONObject(result);
					con.disconnect();
					
			}
			catch (MalformedURLException e) {
				System.out.println("IO fails cause an unknown error :(");
			}
			catch (RuntimeException e) {
				System.out.println("The API is not working.");
				e.printStackTrace();
			}
			catch(IOException e)
			{
				System.out.println("IO fails cause an unknown error :( ff");
				e.printStackTrace();
			}
			catch (Exception e) {
				System.out.println("It crashed");
			}	
		}
		else
		{
			System.out.println("No found");
		}
	}*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String page = request.getParameter("page");
		String idStudent = request.getParameter("idStudent");
		System.out.println("The page is:"+page);
		System.out.println("The idStudent is:"+idStudent);
		
		if(page!=null && page.equals("delete") && idStudent!=null)
		{
			Prueba p = new Prueba();
			JSONArray array = p.readOne("student", idStudent);
			JSONObject obj = array.getJSONObject(0);
			try {				
				URL url = new URL("http://localhost:8081/academic/students");
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("DELETE");
				conn.addRequestProperty("Accept", "application/json");
				
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
			
				System.out.println("Here I'm sending the data");
				OutputStream os = conn.getOutputStream();
				byte[] input = obj.toString().getBytes("utf-8");
				os.write(input,0,input.length);
				
				System.out.println("Here I'm receiving the data");
				BufferedReader reader  = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				String data= null;
				String result=null;
				
				while((data = reader.readLine())!=null)
				{
					System.out.println("Esto llego: "+data);
					result=data;
				}
			
				response.getWriter().println("<h2>Student deleted.</h2>");
				
				conn.disconnect();	
			}
			catch (MalformedURLException e) {
				System.out.println("IO fails cause an unknown error :(");
			}
			catch (RuntimeException e) {
				System.out.println("The API is not working.");
				e.printStackTrace();
			}
			catch(IOException e)
			{
				System.out.println("IO fails cause an unknown error :( ff");
				e.printStackTrace();
			}
			catch (Exception e) {
				System.out.println("It crashed");
			}
		}
		else
		{
			System.out.println("Not found");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{		
		String page = request.getParameter("page");
		System.out.println("The page is:"+page);

		if(page.equals("create"))
		{
			String[] birthday = request.getParameter("birthday").split("-");
			String date = birthday[2]+"/"+birthday[1]+"/"+birthday[0].substring(1,3);
			System.out.println(date);
			String controlNumber = request.getParameter("controlNumber");
			String career = request.getParameter("career");
			String address = request.getParameter("address");
			String notes = request.getParameter("notes");
			String last = request.getParameter("lastName");
			String city = request.getParameter("city");
			String name = request.getParameter("name");
			String state = request.getParameter("state");
			String age = request.getParameter("age");
			String email = request.getParameter("email");

			String body = "{\"birthday\":\""+date+"\",\"control-number\":\""+controlNumber+"\",\"career\":\""+career+"\",\"address\":\""+address+"\",\"notes\":\""+notes+"\",\"last\":\""+last+"\",\"city\":\""+city+"\",\"name\":\""+name+"\",\"state\":\""+state+"\",\"age\":\""+age+"\",\"email\":\""+email+"\"}";
			System.out.println(body);
			try {				
				URL url = new URL("http://localhost:8081/academic/students");
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("POST");
				conn.addRequestProperty("Accept", "application/json");
				
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
			
				System.out.println("Here I'm sending the data");
				OutputStream os = conn.getOutputStream();
				byte[] input = body.getBytes("utf-8");
				os.write(input,0,input.length);
				
				System.out.println("Here I'm receiving the data");
				BufferedReader reader  = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				String data= null;
				String result=null;
				
				while((data = reader.readLine())!=null)
				{
					System.out.println("Esto llego: "+data);
					result=data;
				}
			
				response.getWriter().println("<h2>A new student has been added.</h2>");
				
				conn.disconnect();	
			}
			catch (MalformedURLException e) {
				System.out.println("IO fails cause an unknown error :(");
			}
			catch (RuntimeException e) {
				System.out.println("The API is not working.");
				e.printStackTrace();
			}
			catch(IOException e)
			{
				System.out.println("IO fails cause an unknown error :( ff");
				e.printStackTrace();
			}
			catch (Exception e) {
				System.out.println("It crashed");
			}
		}
		else if(page!=null && page.equals("update"))
		{
			String date = request.getParameter("updateBirthday");
			String controlNumber = request.getParameter("updateControlNumber");
			String career = request.getParameter("updateCareer");
			String address = request.getParameter("updateAddress");
			String notes = request.getParameter("notes");
			String last = request.getParameter("updatLastName");
			String city = request.getParameter("updateCity");
			String name = request.getParameter("updateName");
			String state = request.getParameter("updateState");
			String age = request.getParameter("updateAge");
			String email = request.getParameter("updateEmail");

			String body = "{\"birthday\":\""+date+"\",\"control-number\":\""+controlNumber+"\",\"career\":\""+career+"\",\"address\":\""+address+"\",\"notes\":\""+notes+"\",\"last\":\""+last+"\",\"city\":\""+city+"\",\"name\":\""+name+"\",\"state\":\""+state+"\",\"age\":\""+age+"\",\"email\":\""+email+"\"}";
			System.out.println(body);
			try {				
				URL url = new URL("http://localhost:8081/academic/students");
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("PUT");
				conn.addRequestProperty("Accept", "application/json");
				
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
			
				System.out.println("Here I'm sending the data");
				OutputStream os = conn.getOutputStream();
				byte[] input = body.getBytes("utf-8");
				os.write(input,0,input.length);
				
				System.out.println("Here I'm receiving the data");
				BufferedReader reader  = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				String data= null;
				String result=null;
				
				while((data = reader.readLine())!=null)
				{
					System.out.println("Esto llego: "+data);
					result=data;
				}
			
				response.getWriter().println("<h2>A student has been modified.</h2>");
				
				conn.disconnect();	
			}
			catch (MalformedURLException e) {
				System.out.println("IO fails cause an unknown error :(");
			}
			catch (RuntimeException e) {
				System.out.println("The API is not working.");
				e.printStackTrace();
			}
			catch(IOException e)
			{
				System.out.println("IO fails cause an unknown error :( ff");
				e.printStackTrace();
			}
			catch (Exception e) {
				System.out.println("It crashed");
			}
		}
		else
		{
			System.out.println("No found. ");
		}
				
	}
	
}
