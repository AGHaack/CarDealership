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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;

public class Car
{
	private boolean preOwned;
	private String vinNum;
	private String make;
	private String model;
	private int year;
	private String color;
	private String purchaseDate;
	private int price;
	private String description;
	private String mainPicFile;
	private int mileage;
	private boolean inAuction;
	private static final String path = "C:\\Users\\agrif\\OneDrive\\Desktop\\Workspace-Claim 3\\CarDealership\\Inventory\\";
	
	public Car() 
	{
		
	}

	public boolean isPreOwned() {
		return preOwned;
	}

	public void setPreOwned(boolean preOwned) {
		this.preOwned = preOwned;
	}

	public String getVinNum() {
		return vinNum;
	}
	public void setVinNum(String vinNum) {
		this.vinNum = vinNum;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean isInAuction() {
		return inAuction;
	}
	public void setInAuction(boolean inAuction) {
		this.inAuction = inAuction;
	}
	public String getMainPicFile() {
		return mainPicFile;
	}
	public void setMainPicFile(String mainPicFile) {
		this.mainPicFile = mainPicFile;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public String formatString() 
	{
		
		String text = this.preOwned+"#"+this.inAuction+"#"+this.vinNum+"#"+this.make+"#"+this.model+"#"+this.year+"#"+this.color+"#"+this.price+"#"+this.description+"#"+this.mileage+"#"+this.purchaseDate+"#"+this.mainPicFile;
		return text;
	}

	public void addToInventory()
	{
		String fileName = path+"carinventory.txt";
		try
		{
			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true));
			bw.write(this.formatString());
			bw.newLine();
			bw.close();
			
		}catch(IOException e)
		{
			System.out.println("Error saving file.");
		}
		
	}
	public ArrayList<Car> loadInventory() throws ParseException 
	{
		
		File file = new File(path+"carinventory.txt");
		ArrayList<Car> carInventory = new ArrayList<Car>();
		
		try(BufferedReader reader = new BufferedReader(new FileReader(file)))
		{
			String line;
			while((line = reader.readLine()) != null)
			{
				Car car = new Car();
				String[] parsedLine = line.split("#");
				
				if(parsedLine[1].equals("true"))
				{
					car.setPreOwned(true);
				}
				else
				{
					car.setPreOwned(false);
				}
				
				
				car.setVinNum(parsedLine[2]);
				car.setMake(parsedLine[3]);
				car.setModel(parsedLine[4]);
				car.setYear(Integer.parseInt(parsedLine[5]));
				car.setColor(parsedLine[6]);
				car.setPrice(Integer.parseInt(parsedLine[7]));
				car.setDescription(parsedLine[8]);
				car.setMileage(Integer.parseInt(parsedLine[9]));
				car.setPurchaseDate(parsedLine[10]);
				car.setMainPicFile(parsedLine[11]);
				car.checkAuctionStatus();
				
				carInventory.add(car);
			}
			reader.close();
			
		}catch(IOException e)
		{
			System.out.println("Error reading file.");
		}
		
		
		return carInventory;
	}
	
	public void updateInventory(ArrayList<Car> cars) 
	{
		String fileName = path+"carinventory.txt";
		try
		{
			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, false));
			for(Car c : cars)
			{
				bw.write(c.formatString());
				bw.newLine();
			}
			bw.close();
			
		}catch(IOException e)
		{
			System.out.println("Error saving file.");
		}
		
	}
	public void checkAuctionStatus() throws ParseException
	{
		
		Date purchaseDate = new SimpleDateFormat("MM/dd/yyyy").parse(this.getPurchaseDate());
		
		Calendar cal = Calendar.getInstance();
		long todayInMills = cal.getTimeInMillis();
		long pDateMills = purchaseDate.getTime();
		long dif = todayInMills - pDateMills;
		int days = (int) (dif/(1000*60*60*24));
	
		
		if(days>=120)
		{
			this.setInAuction(true);
			int price = this.getPrice();
			this.setPrice((int) (price*.9));
		}
		else {
			this.setInAuction(false);
		}
		
		
	}
	
}
