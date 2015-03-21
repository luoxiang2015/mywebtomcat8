package com.luox2014.util;

import com.luox2014.service.ArticleService;
import com.luox2014.service.ArticleServiceImpl;


public class PublicTest {

	public static void main(String[] args) {
		ArticleService a = new ArticleServiceImpl() ;
		System.out.println(a.queryArticle("1"));
		
	}
	
}
