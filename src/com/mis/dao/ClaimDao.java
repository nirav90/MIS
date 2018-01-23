package com.mis.dao;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mis.formBean.ClaimForm;
import com.mis.formBean.UserDataShowForm;

public class ClaimDao
{

	Connection	      dbConnection	      = null;
	CallableStatement	callableStatement	= null;
	ResultSet	      rs	              = null;

	public int addClaimDetail(ClaimForm claimForm) throws SQLException
	{
		int message = 0;

		String insertStoreProc = "{call usp_insertClaim(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		try
		{

			dbConnection = DBConnection.getConnection();

			dbConnection.setAutoCommit(false);

			callableStatement = dbConnection.prepareCall(insertStoreProc);

			callableStatement.setString(1, claimForm.getClaimantName());
			callableStatement.setString(2, claimForm.getClaimAddress());
			callableStatement.setString(3, claimForm.getArea());
			callableStatement.setString(4, claimForm.getTaluka());
			callableStatement.setString(5, claimForm.getDistrict());
			callableStatement.setString(6, claimForm.getPincode());
			callableStatement.setString(7, claimForm.getLandLineNo());
			callableStatement.setString(8, claimForm.getMobileNo1());
			callableStatement.setString(9, claimForm.getMobileNo2());
			callableStatement.setString(10, claimForm.getTypeOfQuery());
			callableStatement.setString(11, claimForm.getPodDetail());
			callableStatement.setString(12, claimForm.getDateOfIntimation());
			callableStatement.setString(13, claimForm.getNamerOfPortFolioDirector());
			callableStatement.setString(14, claimForm.getNamerOfInvestigator());
			callableStatement.setString(15, claimForm.getDateOfAppointmentOfInvestigator());
			callableStatement.setString(16, claimForm.getDataEnter());
			callableStatement.setString(17, claimForm.getSchemeName());
			callableStatement.setString(18, claimForm.getTypeOfClaim());
			callableStatement.setDouble(19, claimForm.getClaimIntimationAmount());
			callableStatement.setString(20, claimForm.getStatus());
			callableStatement.setString(21, claimForm.getTimeLeftToSubmit());
			callableStatement.setString(22, claimForm.getDateOfQuerySend());
			callableStatement.setString(23, claimForm.getDateOfDocumentRecevied());
			callableStatement.setString(24, claimForm.getRemarks());
			callableStatement.setString(25, claimForm.getDateOfIssueCheque());
			callableStatement.setString(26, claimForm.getDateOfDispatchCheqe());
			callableStatement.setString(27, claimForm.getDispatchAddress());
			callableStatement.setLong(28, claimForm.getPodNo());
			callableStatement.setString(29, claimForm.getClaimId());
			

			// execute insertDBUSER store procedure
			message = callableStatement.executeUpdate();

			dbConnection.commit();
			System.out.println("commit done");

		}
		catch (SQLException e)
		{

			e.getMessage();
			e.printStackTrace();

			dbConnection.rollback();
			System.out.println("roll back done");
		}
		finally
		{

			if (callableStatement != null)
			{
				callableStatement.close();
			}

			if (dbConnection != null)
			{
				dbConnection.close();
			}

		}


		return message;
	}
	
	
	
	public List<ClaimForm> viewclaimAll()
	{
		List<ClaimForm> claimForms = null;
		DbOperation dbOperation = new DbOperation();
		try {
			
			dbConnection = DBConnection.getConnection();
			String str = " select * from claimdetail";
			ResultSet rs = dbOperation.executeSelect(str);

		 claimForms =	new ArrayList<ClaimForm>();

			while (rs.next())
			{

				ClaimForm form = new ClaimForm();
				form.setClaimId(rs.getString("claimID"));
				form.setClaimantName(rs.getString("claimantName"));
				form.setClaimIntimationAmount(rs.getLong("claimIntimationAmount"));
				form.setStatus(rs.getString("StatusOfClaim"));
				form.setTypeOfClaim(rs.getString("typeOfClaim"));
				form.setTypeOfQuery(rs.getString("typeOfQuery"));
				form.setClaimIdAuto(rs.getInt("claimIDAuto"));
				
				claimForms.add(form);

			}


			
		} catch (Exception e) {

			e.printStackTrace();
			
		}
		
		return claimForms;
	}
	
	
	public List<ClaimForm> viewClaimDetailbyId(int claimIdAuto)
	{	
		List<ClaimForm> claimForms = null;
		DbOperation dbOperation = new DbOperation();
		try {
			
			dbConnection = DBConnection.getConnection();
			String str = " select * from claimdetail where claimIDAuto ="+claimIdAuto+"";
			ResultSet rs = dbOperation.executeSelect(str);

		 claimForms =	new ArrayList<ClaimForm>();

			while (rs.next())
			{

				ClaimForm form = new ClaimForm();
				form.setClaimId(rs.getString("claimID"));
				form.setClaimantName(rs.getString("claimantName"));
				form.setClaimIntimationAmount(rs.getLong("claimIntimationAmount"));
				form.setStatus(rs.getString("StatusOfClaim"));
				form.setTypeOfClaim(rs.getString("typeOfClaim"));
				form.setTypeOfQuery(rs.getString("typeOfQuery"));
				form.setClaimIdAuto(rs.getInt("claimIDAuto"));
				form.setArea(rs.getString("areaOfClaim"));
				form.setClaimAddress(rs.getString("claimAddress"));
				form.setDataEnter(rs.getString("DataEnter"));
				form.setDateOfAppointmentOfInvestigator(rs.getString("DateOfAppointmentOfInvestigator"));
				form.setDateOfDispatchCheqe(rs.getString("dateOfDispatchCheqe"));
				form.setDateOfDocumentRecevied(rs.getString("dateOfDocumentRecevied"));
				form.setDateOfIntimation(rs.getString("DateOfIntimation"));
				form.setDateOfIssueCheque(rs.getString("dateOfIssueCheque"));
				form.setDateOfQuerySend(rs.getString("dateOfQuerySend"));
				form.setDispatchAddress(rs.getString("DispatchAddress"));
				form.setDistrict(rs.getString("district"));
				form.setFilePendingAt(rs.getString("claimantName"));
				form.setLandLineNo(rs.getString("landLineNo"));
				form.setMobileNo1(rs.getString("mobileNo1"));
				form.setMobileNo2(rs.getString("mobileNo2"));
				form.setNamerOfInvestigator(rs.getString("namerOfInvestigator"));
				form.setNamerOfPortFolioDirector(rs.getString("namerOfPortFolioDirector"));
				form.setPincode(rs.getString("pincode"));
				form.setPodDetail(rs.getString("podDetail"));
				form.setRemarks(rs.getString("remarks"));
				form.setSchemeName(rs.getString("schemeName"));
				form.setStatus(rs.getString("StatusOfClaim"));
				form.setTaluka(rs.getString("taluka"));
				form.setTimeLeftToSubmit(rs.getString("timeLeftToSubmit"));
				form.setTypeOfClaim(rs.getString("typeOfClaim"));
				form.setTypeOfQuery(rs.getString("typeOfQuery"));
				
				
				
				claimForms.add(form);

			}


			
		} catch (Exception e) {

			e.printStackTrace();
			
		}
		
		return claimForms;
	}

	
	
	
}
