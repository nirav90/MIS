package com.mis.action;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import com.mis.dao.AuthLoginDao;

public class DummyDB
{
	private int	         totalCountries;
	private List<String>	clients;
	AuthLoginDao	     dao	= new AuthLoginDao();
	public DummyDB()
	{

		clients = dao.getClientName();

		totalCountries = clients.size();
	}

	public List<String> getData(String query)
	{
		String country = null;
		query = query.toLowerCase();
		List<String> matched = new ArrayList<String>();
		for (int i = 0; i < totalCountries; i++)
		{
			country = clients.get(i).toLowerCase();
			if (country.startsWith(query))
			{
				matched.add(clients.get(i));
			}
		}
		return matched;
	}
}
