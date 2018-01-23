package com.mis.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.ClaimDao;
import com.mis.domain.General;
import com.mis.formBean.ClaimForm;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ClaimAction extends ActionSupport {

	ClaimForm claimForm;
	List<ClaimForm> claimForms = null;

	public String addClaimDetail() {
		String flag = "false";

		ClaimDao claimDao = new ClaimDao();
		try

		{
			HttpServletRequest request = ServletActionContext.getRequest();
			claimForm = new ClaimForm();
			claimForm.setClaimId(request.getParameter("claimId"));
			claimForm.setClaimantName(request.getParameter("claimantName"));
			claimForm.setClaimAddress(request.getParameter("claimAddress"));
			claimForm.setArea(request.getParameter("area"));
			claimForm.setArea(request.getParameter("nameOfPortfolioDirector"));
			claimForm.setTaluka(request.getParameter("taluka"));
			claimForm.setDistrict(request.getParameter("district"));
			claimForm.setPincode(request.getParameter("pincode"));
			claimForm.setLandLineNo(request.getParameter("landLineNo"));
			claimForm.setMobileNo1(request.getParameter("mobileNo1"));
			claimForm.setMobileNo2(request.getParameter("mobileNo2"));
			claimForm.setTypeOfQuery(request.getParameter("typeOfQuery"));
			claimForm.setPodDetail(request.getParameter("podDetail"));
			claimForm.setDateOfIntimation(General.dateParse(request
					.getParameter("DateOfIntimation")));
			claimForm.setNamerOfPortFolioDirector(request
					.getParameter("namerOfPortFolioDirector"));
			claimForm.setNamerOfInvestigator(request
					.getParameter("namerOfInvestigator"));
			claimForm.setDateOfAppointmentOfInvestigator(General
					.dateParse(request
							.getParameter("dateOfAppointmentOfInvestigator")));
			claimForm.setDataEnter(request.getParameter("dataEnteredBy"));
			claimForm.setSchemeName(request.getParameter("scheme"));
			claimForm.setTypeOfClaim(request.getParameter("typeOfClaim"));
			claimForm.setClaimIntimationAmount(Long.parseLong(request
					.getParameter("claimIntimationAmount")));
			claimForm.setStatus(request.getParameter("Status"));
			claimForm.setTimeLeftToSubmit(request
					.getParameter("timeLeftToSubmit"));
			claimForm.setDateOfQuerySend(General.dateParse(request
					.getParameter("dateOfQuerySend")));
			claimForm.setDateOfDocumentRecevied(General.dateParse(request
					.getParameter("dateOfDocumentRecevied")));
			claimForm.setRemarks(request.getParameter("remarks"));
			claimForm.setDateOfIssueCheque(General.dateParse(request
					.getParameter("dateOfIssueCheque")));
			claimForm.setDateOfDispatchCheqe(General.dateParse(request
					.getParameter("dateOfDispatchCheqe")));
			claimForm.setDispatchAddress(request
					.getParameter("DispatchAddress"));
			claimForm.setPodNo(Long.parseLong(request.getParameter("podNo")));
			claimForm.setFilePendingAt(request.getParameter("filePendingAt"));

			claimDao.addClaimDetail(claimForm);
			flag = "true";
		} catch (Exception exception) {
			exception.printStackTrace();
		}

		return flag;

	}

	public String viewclaimAll() {
		String flag = "false";

		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			ClaimDao claimDao = new ClaimDao();
			claimForms = claimDao.viewclaimAll();
			flag = "true";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;
	}

	public String viewClaimDetailbyId() {
		String flag = "false";

		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			ClaimDao claimDao = new ClaimDao();
			int id = Integer.parseInt(request.getParameter("h1"));
			claimForms = claimDao.viewClaimDetailbyId(id);
			flag = "true";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;

	}

	public ClaimForm getClaimForm() {
		return claimForm;
	}

	public void setClaimForm(ClaimForm claimForm) {
		this.claimForm = claimForm;
	}

	public List<ClaimForm> getClaimForms() {
		return claimForms;
	}

	public void setClaimForms(List<ClaimForm> claimForms) {
		this.claimForms = claimForms;
	}

}
