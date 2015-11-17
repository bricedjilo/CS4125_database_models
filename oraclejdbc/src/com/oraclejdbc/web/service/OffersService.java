package com.oraclejdbc.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oraclejdbc.web.dao.Offers;
import com.oraclejdbc.web.dao.OffersDAO;

@Service("offerService")
public class OffersService {

	private OffersDAO offersDao;

	@Autowired
	public void setOffersDao(OffersDAO offersDao) {
		this.offersDao = offersDao;
	}

	public List<Offers> getCurrent() {
		return offersDao.getOffers();
	}

}
