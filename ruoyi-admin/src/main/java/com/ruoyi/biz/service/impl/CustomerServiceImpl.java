package com.ruoyi.biz.service.impl;

import java.util.List;

import com.ruoyi.biz.domain.Customer;
import com.ruoyi.biz.mapper.CustomerMapper;
import com.ruoyi.biz.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.core.text.Convert;

/**
 * 客户关系Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-07-14
 */
@Service
public class CustomerServiceImpl implements CustomerService
{
    @Autowired
    private CustomerMapper customerMapper;

    /**
     * 查询客户关系
     * 
     * @param id 客户关系ID
     * @return 客户关系
     */
    @Override
    public Customer selectCustomerById(Long id)
    {
        return customerMapper.selectCustomerById(id);
    }

    /**
     * 查询客户关系列表
     * 
     * @param customer 客户关系
     * @return 客户关系
     */
    @Override
    public List<Customer> selectCustomerList(Customer customer)
    {
        return customerMapper.selectCustomerList(customer);
    }

    /**
     * 新增客户关系
     * 
     * @param customer 客户关系
     * @return 结果
     */
    @Override
    public int insertCustomer(Customer customer)
    {
        return customerMapper.insertCustomer(customer);
    }

    /**
     * 修改客户关系
     * 
     * @param customer 客户关系
     * @return 结果
     */
    @Override
    public int updateCustomer(Customer customer)
    {
        return customerMapper.updateCustomer(customer);
    }

    /**
     * 删除客户关系对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCustomerByIds(String ids)
    {
        return customerMapper.deleteCustomerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除客户关系信息
     * 
     * @param id 客户关系ID
     * @return 结果
     */
    @Override
    public int deleteCustomerById(Long id)
    {
        return customerMapper.deleteCustomerById(id);
    }
}
