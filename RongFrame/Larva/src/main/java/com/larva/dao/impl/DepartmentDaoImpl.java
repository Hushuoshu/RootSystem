package com.larva.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.larva.dao.IDepartmentDao;
import com.larva.model.Department;
import com.mini.core.dao.IMiniDao;

/**
 * @author sxjun
 * @time 2015/9/2 10:10
 */
@Repository("departmentDao")
public class DepartmentDaoImpl implements IDepartmentDao {
	@Resource
	IMiniDao miniDao;
    
    /**
     * 获取所有部门
     *
     * @return
     */
    public List<Department>  selectPage(int limit,int pageNo) {
    	return miniDao.paginate("select * from department order by `order` asc", pageNo, limit, Department.class);
    }

    /**
     * 获取所有部门
     *
     * @return
     */
    public List<Department> selectAll() {
    	return miniDao.findList("select * from department order by `order` asc",Department.class);
    }

    /**
     * 获取部门
     *
     * @param list
     * @param id
     * @return
     */
    public Department get(List<Department> list, int id) {
        for (Department department : list) {
            if (department.getId() == id) {
                return department;
            }
        }
        return null;
    }

    /**
     * 创建部门
     * @param department
     * @return
     */
    public int create(Department department) {
        return miniDao.insert(department);
    }

    /**
     * 删除部门
     * @param depId
     * @return
     */
    public int delete(int depId) {
        return miniDao.deleteById(Department.class,depId);
    }

    /**
     * 更新部门
     * @param department
     * @return
     */
    public int update(Department department) {
        return miniDao.update(department);
    }
}
