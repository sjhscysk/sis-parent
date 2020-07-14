package com.ruoyi.biz.service;

import com.ruoyi.biz.domain.Customer;

import java.util.List;

/**
 * 客户关系Service接口
 * 
 * @author xusisheng
 * @date 2020-07-14
 */
public interface CustomerService
{
    /**
     * 查询客户关系
     * 
     * @param id 客户关系ID
     * @return 客户关系
     */
    public Customer selectCustomerById(Long id);

    /**
     * 查询客户关系列表
     * 
     * @param customer 客户关系
     * @return 客户关系集合
     */
    public List<Customer> selectCustomerList(Customer customer);

    /**
     * 新增客户关系
     * 
     * @param customer 客户关系
     * @return 结果
     */
    public int insertCustomer(Customer customer);

    /**
     * 修改客户关系
     * 
     * @param customer 客户关系
     * @return 结果
     */
    public int updateCustomer(Customer customer);

    /**
     * 批量删除客户关系
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCustomerByIds(String ids);

    /**
     * 删除客户关系信息
     * 
     * @param id 客户关系ID
     * @return 结果
     */
    public int deleteCustomerById(Long id);
}
