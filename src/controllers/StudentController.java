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

import org.json.JSONObject;



@WebServlet("/studentController")
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public StudentController() {}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String page = request.getParameter("page");
		System.out.println(page);
		if(page!=null && page.equals("create"))
		{
			/*String controlNumber = request.getParameter("");
			String name = request.getParameter("");
			String lastName = request.getParameter("");
			String career = request.getParameter("");
			String email = request.getParameter("");*/
			String name = "Salvador";
			String body = "{\"name\":\""+name+"\"}";
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
					
					/*con.setDoOutput(true);
					con.setDoInput(true);
					con.setUseCaches(false);
									
					OutputStream os = con.getOutputStream();
					
					System.out.println(body);
					
					byte[] input = body.getBytes("utf-8");
					os.write(input, 0, input.length);*/
					
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
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String page = request.getParameter("page");
		System.out.println(page);
		if(page!=null && page.equals("delete"))
		{
			String body = "{\"birthday\":\"27/09/99\",\"control-number\":\"17040023\",\"career\":\"ENF\",\"address\":\"Hotencias 180\",\"notes\":\"Esta es mi nota\",\"last\":\"Mendoza Carrillo\",\"city\":\"Uruapan\",\"name\":\"Paulina\",\"state\":\"Michoacan\",\"age\":\"21\",\"email\":\"paulina@hotmail.com\"}";
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
			
				response.getWriter().println("<h2>Great news your house is "+result+" meters</h2>");
				
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
			System.out.println("No found");
		}
	}
}
