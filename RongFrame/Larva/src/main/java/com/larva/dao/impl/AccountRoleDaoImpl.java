package com.larva.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.larva.dao.IAccountRoleDao;
import com.larva.model.AccountRole;
import com.mini.core.dao.IMiniDao;

/**
 * @author sxjun
 * @time 2015/8/27 17:05
 */
@Repository("accountRoleDao")
public class AccountRoleDaoImpl implements IAccountRoleDao {
	@Resource
	IMiniDao miniDao;

    /**
     * 根据账号id获取角色id
     * @param accountId
     * @return
     */
    public List<Integer> selectRoleIdSet(int accountId) {
    	List<Integer> records =  miniDao.findList("select role_id from account_role where account_id = ?",int.class,accountId);
        return records;
    }

    /**
     * 创建账号角色
     * @param accountRole
     * @return
     */
    public int createAccountRole(AccountRole accountRole) {
        return miniDao.insert(accountRole);
    }

    /**
     * 根据角色删除account-role
     * @param roleId
     * @return
     */
    public int deleteByRoleId(int roleId) {
        return miniDao.execute("delete from account_role where role_id = ?", roleId);
    }

    /**
     *   根据账号删除account-role
     * @param accountId
     * @return
     */
    public int deleteByAccountId(int accountId) {
    	return miniDao.execute("delete from account_role where account_id = ?", accountId);
    }
}
