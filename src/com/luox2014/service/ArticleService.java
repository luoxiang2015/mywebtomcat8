package com.luox2014.service;

import java.util.List;

import com.luox2014.bean.Article;

public interface ArticleService {
  public List<Article> queryArticle(String article_id);
  
}