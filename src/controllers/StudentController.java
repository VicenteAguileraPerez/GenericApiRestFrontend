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


@WebServlet("/studentController")
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public StudentController() {}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		/*String controlNumber = request.getParameter("");
		String name = request.getParameter("");
		String lastName = request.getParameter("");
		String career = request.getParameter("");
		String email = request.getParameter("");*/
		String name = request.getParameter("name");
		System.out.println(name);
		String body = "{\"control_number\":\""+name+"\"}";
		try 
		{
				URL url = new URL("http://localhost:8081/GenericApiRestFrontend/students");
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				con.setRequestMethod("POST");
				con.addRequestProperty("Accept", "application/json");
				con.setDoOutput(true);
				con.setDoInput(true);
				con.setUseCaches(false);
								
				OutputStream os = con.getOutputStream();
				
				byte[] input = body.getBytes("utf-8");
				os.write(input, 0, input.length);				
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
			System.out.println("IO fails cause an unknown error :(");
		}
		catch (Exception e) {
			System.out.println("It crashed");
		}		
	}
}
