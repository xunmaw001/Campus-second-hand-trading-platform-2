package com.dao;

import com.entity.ShangpinfahuoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinfahuoVO;
import com.entity.view.ShangpinfahuoView;


/**
 * 商品发货
 * 
 * @author 
 * @email 
 * @date 2021-03-04 00:35:20
 */
public interface ShangpinfahuoDao extends BaseMapper<ShangpinfahuoEntity> {
	
	List<ShangpinfahuoVO> selectListVO(@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);
	
	ShangpinfahuoVO selectVO(@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);
	
	List<ShangpinfahuoView> selectListView(@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);

	List<ShangpinfahuoView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);
	
	ShangpinfahuoView selectView(@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);
	
}
