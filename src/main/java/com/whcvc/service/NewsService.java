package com.whcvc.service;

import com.whcvc.domain.News;
import com.whcvc.domain.PageForm;
import org.springframework.stereotype.Service;

import java.util.List;


public interface NewsService {
    List<News> findAll();
    News findById(int id);
    void insert(News news);
    void delete(int id);
    void update(News news);
    List<News> findPartNews(PageForm pageForm);
    int findNewsCount();
}
