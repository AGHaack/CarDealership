package com.objs;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;

public class Customer 
{
	private String firstName;
	private String lastName;
	private String phoneNum;
	private String email;
	private Date dateOfSale;
	private String salesRep;
	private String vinSold;
	private boolean preOwned;
	private String makeSold;
	private String modelSold;
	private int yearSold;
	private int salePrice;
	private static final String path = "C:\\Users\\agrif\\OneDrive\\Desktop\\Workspace-Claim 3\\CarDealership\\Inventory\\";
	
	public Customer()
	{
		
	}

	public Customer(String firstName, String lastName, String phoneNum, String email, Date dateOfSale,
			String salesRep, String vinSold, boolean preOwned, String makeSold, String modelSold, int salePrice, int yearSold) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNum = phoneNum;
		this.email = email;
		this.dateOfSale = dateOfSale;
		this.salesRep = salesRep;
		this.vinSold = vinSold;
		this.preOwned = preOwned;
		this.makeSold = makeSold;
		this.modelSold = modelSold;
		this.yearSold = yearSold;
		this.salePrice = salePrice;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateOfSale() {
		return dateOfSale;
	}

	public void setDateOfSale(Date dateOfSale) {
		this.dateOfSale = dateOfSale;
	}

	public String getSalesRep() {
		return salesRep;
	}

	public void setSalesRep(String salesRep) {
		this.salesRep = salesRep;
	}

	public String getVinSold() {
		return vinSold;
	}

	public void setVinSold(String vinSold) {
		this.vinSold = vinSold;
	}

	public boolean isPreOwned() {
		return preOwned;
	}

	public void setPreOwned(boolean preOwned) {
		this.preOwned = preOwned;
	}

	public String getMakeSold() {
		return makeSold;
	}

	public void setMakeSold(String makeSold) {
		this.makeSold = makeSold;
	}

	public String getModelSold() {
		return modelSold;
	}

	public void setModelSold(String modelSold) {
		this.modelSold = modelSold;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	
	public int getYearSold() {
		return yearSold;
	}

	public void setYearSold(int yearSold) {
		this.yearSold = yearSold;
	}

	public String formatString() throws ParseException
	{
		String date = this.dateOfSale.toString();
		DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
		Date date1 = format.parse(date);
		String text = date1+"#"+this.salesRep+"#"+this.preOwned+"#"+this.vinSold+"#"+this.makeSold+"#"+this.modelSold+"#"+this.yearSold+"#"+this.salePrice+"#"+this.firstName+"#"+this.lastName+"#"+this.email+"#"+this.phoneNum;
		return text;
	}
	public void updateSalesReport() throws ParseException
	{
		String fileName = path+"salesreport.txt";
		try
		{
			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true));
			bw.write(this.formatString());
			bw.newLine();
			bw.close();
		}catch(IOException e)
		{
			System.out.println("Error saving to file");
		}
	}
	
	public ArrayList<Customer> loadSalesReport() throws ParseException
	{
		File file = new File(path+"salesreport.txt");
		ArrayList<Customer> customers = new ArrayList<Customer>();
		try(BufferedReader reader = new BufferedReader(new FileReader(file)))
		{
			String line;
			while((line = reader.readLine()) != null)
			{
				String[] parsedLine = line.split("#");
				Customer c = new Customer();
				Date dateOfSale = new SimpleDateFormat("MM/dd/yyyy").parse(parsedLine[0]);
				c.setDateOfSale(dateOfSale);
				c.setSalesRep(parsedLine[1]);
				if(parsedLine[2].equals("true"))
				{
					c.setPreOwned(true);
				}
				else
				{
					c.setPreOwned(false);
				}
				c.setVinSold(parsedLine[3]);
				c.setMakeSold(parsedLine[4]);
				c.setModelSold(parsedLine[5]);
				c.setYearSold(Integer.parseInt(parsedLine[6]));
				c.setSalePrice(Integer.parseInt(parsedLine[7]));
				c.setFirstName(parsedLine[8]);
				c.setLastName(parsedLine[9]);
				c.setEmail(parsedLine[10]);
				c.setPhoneNum(parsedLine[11]);
				customers.add(c);
			}
		}catch(IOException e)
		{
			System.out.println("Error reading from file.");
		}
		
		Collections.sort(customers, new Comparator<Customer>() {
			public int compare(Customer c1, Customer c2) {
				return c1.getDateOfSale().compareTo(c2.getDateOfSale());
			}
		});
		
		
		return customers;
	}
	
	
	
	
	
	
	
	
	
	
}
