package com.entity.view;

import com.entity.ShangpinfahuoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品发货
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-04 00:35:20
 */
@TableName("shangpinfahuo")
public class ShangpinfahuoView  extends ShangpinfahuoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinfahuoView(){
	}
 
 	public ShangpinfahuoView(ShangpinfahuoEntity shangpinfahuoEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinfahuoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
