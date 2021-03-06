package com.larva.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.larva.dao.IPermissionDao;
import com.larva.model.Permission;
import com.mini.core.dao.IMiniDao;

/**
 * @author sxjun
 * @time 2015/8/27 17:31
 */
@Repository("permissionDao")
public class PermissionDaoImpl implements IPermissionDao {
	@Resource
	IMiniDao miniDao;
    
    /**
     * 获取所有权限
     *
     * @return
     */
    public List<Permission>  selectPage(int limit,int pageNo) {
    	return miniDao.paginate("select * from permission order by `order` asc", pageNo, limit, Permission.class);
    }
    
    /**
     * 根据权限id获取权限
     * @param permissionList
     * @return
     */
    public Permission get(List<Permission> permissionList,int id) {
        for(Permission permission:permissionList){
            if(permission.getId().intValue()==id){
                return permission;
            }
        }
        return null;
    }



    /**
     * 获取所有权限
     * @return
     */
    public List<Permission> selectAll() {
        return miniDao.findList("select * from permission order by `order` asc", Permission.class);
    }

    /**
     * 创建权限
     * @param permission
     * @return
     */
    @Override
    public int createPermission(Permission permission) {
        return miniDao.insert(permission);
    }

    /**
     * 删除权限
     * @param perId
     */
    @Override
    public int deletePermission(int perId) {
        return miniDao.deleteById(Permission.class,perId);
    }

    /**
     * 更新权限
     * @param permission
     * @return
     */
    @Override
    public int updatePermission(Permission permission) {
        return miniDao.update(permission);
    }
}
