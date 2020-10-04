package controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONArray;

public class Prueba 
{
	public Prueba() {}
	
	public JSONArray readAll(String page)
	{
		try 
		{
			if(page!=null)
			{
				URL url = new URL("http://localhost:8081/academic/students?page="+page);
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				con.setRequestMethod("GET");
				con.addRequestProperty("Accept", "application/json");
				if(con.getResponseCode() != 200)
				{
					throw new RuntimeException("Failed : HTTP error code: "+ con.getResponseCode());
				}
				BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream()));
				String temp = null;
				String result = null;
				while((temp = reader.readLine())!=null)
				{
					System.out.println(temp);
					result=temp;
				}	
				JSONArray jsonArray = new JSONArray(result);
				con.disconnect();
				return jsonArray;
			}
			else
			{
				System.out.println("Not found.");
			}
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
		return null;
	}
	
	public JSONArray readOne(String page, String id)
	{
		try 
		{
			if(page!=null)
			{
				URL url = new URL("http://localhost:8081/academic/students?page="+page+"&control-number="+id);
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				con.setRequestMethod("GET");
				con.addRequestProperty("Accept", "application/json");
				if(con.getResponseCode() != 200)
				{
					throw new RuntimeException("Failed : HTTP error code: "+ con.getResponseCode());
				}
				BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream()));
				String temp = null;
				String result = null;
				while((temp = reader.readLine())!=null)
				{
					System.out.println(temp);
					result=temp;
				}	
				JSONArray object = new JSONArray(result);
				con.disconnect();
				return object;
			}
			else
			{
				System.out.println("Not found.");
			}
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
		return null;
	}
	
}
