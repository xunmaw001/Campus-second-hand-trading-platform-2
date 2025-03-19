package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShangpinfahuoDao;
import com.entity.ShangpinfahuoEntity;
import com.service.ShangpinfahuoService;
import com.entity.vo.ShangpinfahuoVO;
import com.entity.view.ShangpinfahuoView;

@Service("shangpinfahuoService")
public class ShangpinfahuoServiceImpl extends ServiceImpl<ShangpinfahuoDao, ShangpinfahuoEntity> implements ShangpinfahuoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinfahuoEntity> page = this.selectPage(
                new Query<ShangpinfahuoEntity>(params).getPage(),
                new EntityWrapper<ShangpinfahuoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinfahuoEntity> wrapper) {
		  Page<ShangpinfahuoView> page =new Query<ShangpinfahuoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinfahuoVO> selectListVO(Wrapper<ShangpinfahuoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinfahuoVO selectVO(Wrapper<ShangpinfahuoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinfahuoView> selectListView(Wrapper<ShangpinfahuoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinfahuoView selectView(Wrapper<ShangpinfahuoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
