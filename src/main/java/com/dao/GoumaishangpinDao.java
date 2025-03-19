package com.dao;

import com.entity.GoumaishangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GoumaishangpinVO;
import com.entity.view.GoumaishangpinView;


/**
 * 购买商品
 * 
 * @author 
 * @email 
 * @date 2021-03-04 00:35:20
 */
public interface GoumaishangpinDao extends BaseMapper<GoumaishangpinEntity> {
	
	List<GoumaishangpinVO> selectListVO(@Param("ew") Wrapper<GoumaishangpinEntity> wrapper);
	
	GoumaishangpinVO selectVO(@Param("ew") Wrapper<GoumaishangpinEntity> wrapper);
	
	List<GoumaishangpinView> selectListView(@Param("ew") Wrapper<GoumaishangpinEntity> wrapper);

	List<GoumaishangpinView> selectListView(Pagination page,@Param("ew") Wrapper<GoumaishangpinEntity> wrapper);
	
	GoumaishangpinView selectView(@Param("ew") Wrapper<GoumaishangpinEntity> wrapper);
	
}
