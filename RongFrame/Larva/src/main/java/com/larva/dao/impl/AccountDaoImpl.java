package com.larva.dao.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.larva.dao.IAccountDao;
import com.larva.model.Account;
import com.mini.core.PageResult;
import com.mini.core.dao.IMiniDao;

/**
 * @author sxjun
 * @time 2015/8/27 16:23
 */

@Repository("accountDao")
public class AccountDaoImpl implements IAccountDao {
	@Resource
	IMiniDao miniDao;
	
    /**
     * 获取所有用户
     *
     * @return
     */
    public List<Account>  selectPage(int limit,int pageNo) {
    	return miniDao.paginate("select * from Account",pageNo, limit, Account.class);
    }

    @Override
    public Account get(int id) {
        return miniDao.findById(Account.class, id);
    }
    
    /**
     * 获取用户
     *
     * @param list
     * @param id
     * @return
     */
    public Account get(List<Account> list, int id) {
        for (Account account : list) {
            if (account.getId() == id) {
                return account;
            }
        }
        return null;
    }
    
    /**
     * 获取所有用户
     *
     * @return
     */
    public List<Account> selectAll() {
        return miniDao.findList("select * from account order by id asc", Account.class);
    }

    /**
     * @param account
     * @return
     */
    public Account getByAccount(String account) {
        return miniDao.find("select * from account where account = ?", Account.class, account);
    }

    @Override
    public int save(Account account) {
        return miniDao.insert(account);
    }

    /**
     * 删除账号
     * @param accountId
     * @return
     */
    @Override
    public int delete(int accountId) {
        return miniDao.deleteById(Account.class, accountId);
    }

    /**
     * 账号管理页面获取账号id
     * @return
     */
    @Override
    public PageResult<Account> selectAccountIdManage(String querySql,int pageNow,int pageSize) {
    	String sql = "select * from account_manage where 1=1";
    	PageResult<Account> pageResult =  miniDao.paginateResult(sql, pageNow, pageSize, Account.class);
        return pageResult;
    }

    /**
     * 用户管理
     * @param depIdSet  要查询的部门id集合
     * @param excludeAccountIdSet   排除的不查询的账号id集合
     * @param pageNow
     * @param pageSize
     * @return
     */
    @Override
    public PageResult<Account> selectAccountManage(Set<Integer> depIdSet, Set<Integer> excludeAccountIdSet, int pageNow, int pageSize) {
    	 String sql = "select * from account_manage where 1=1";
    	 if(depIdSet!=null&&depIdSet.size()>0){
    		 sql += " and dep_id in(";
    		 Iterator<Integer> it = depIdSet.iterator();  
    		 while (it.hasNext()) {  
    			 sql += it.next()+",";  
    		 } 
    		 sql = sql.substring(0,sql.length()-1);
    		 sql += ")";
    	 }
    	 
    	 if(excludeAccountIdSet!=null&&excludeAccountIdSet.size()>0){
    		 sql += " and id not in(";
    		 Iterator<Integer> it = excludeAccountIdSet.iterator();  
    		 while (it.hasNext()) {  
    			 sql += it.next()+",";  
    		 } 
    		 sql = sql.substring(0,sql.length()-1);
    		 sql += ")";
    	 }
    	 PageResult<Account> pageResult =  miniDao.paginateResult(sql, pageNow, pageSize, Account.class);
        return pageResult;
    }

	@Override
	public int update(Account account) {
		return miniDao.update(account);
	}
}
