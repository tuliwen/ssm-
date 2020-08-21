package com.whcvc.dao;

import com.whcvc.domain.News;
import com.whcvc.domain.PageForm;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface NewsDao {
    @Select("select * from news")
    List<News> findAll();

    @Select("select * from news where id = #{id}")
    News findById(int id);

    @Insert("insert into news (name,creator,createTime,detail) values(#{name},#{creator},#{createTime},#{detail})")
    void insert(News news);

    @Delete("delete from news where id = #{id}")
    void delete(int id);

    @Update("UPDATE news SET name=#{name},creator=#{creator},createTime=#{createTime},detail=#{detail} WHERE id=#{id}")
    void update(News news);

    @Select("SELECT * FROM news LIMIT #{startNews},#{showNum}")
    List<News> findPartNews(PageForm pageForm);

    @Select("SELECT COUNT(*) FROM news")
    int findNewsCount();
}
