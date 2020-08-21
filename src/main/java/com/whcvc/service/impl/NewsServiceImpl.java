package com.whcvc.service.impl;

import com.whcvc.dao.NewsDao;
import com.whcvc.domain.News;
import com.whcvc.domain.PageForm;
import com.whcvc.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao newsDao;

    @Override
    public List<News> findAll() {
        return newsDao.findAll();
    }

    @Override
    public News findById(int id) {
        return newsDao.findById(id);
    }

    @Override
    public void insert(News news) {
        newsDao.insert(news);
    }

    @Override
    public void delete(int id) {
        newsDao.delete(id);
    }

    @Override
    public void update(News news) {
        newsDao.update(news);
    }

    @Override
    public List<News> findPartNews(PageForm pageForm) {
        return newsDao.findPartNews(pageForm);
    }

    @Override
    public int findNewsCount() {
        return newsDao.findNewsCount();
    }
}
