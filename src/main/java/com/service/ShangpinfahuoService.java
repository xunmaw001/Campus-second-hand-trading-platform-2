package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinfahuoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinfahuoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinfahuoView;


/**
 * 商品发货
 *
 * @author 
 * @email 
 * @date 2021-03-04 00:35:20
 */
public interface ShangpinfahuoService extends IService<ShangpinfahuoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinfahuoVO> selectListVO(Wrapper<ShangpinfahuoEntity> wrapper);
   	
   	ShangpinfahuoVO selectVO(@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);
   	
   	List<ShangpinfahuoView> selectListView(Wrapper<ShangpinfahuoEntity> wrapper);
   	
   	ShangpinfahuoView selectView(@Param("ew") Wrapper<ShangpinfahuoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinfahuoEntity> wrapper);
   	
}

