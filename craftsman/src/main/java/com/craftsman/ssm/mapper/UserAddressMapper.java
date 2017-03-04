package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.entity.UserAddress;

public interface UserAddressMapper {
	/*
	 * 删除用户地址
	 * @prame useraddresstbId 地址id
	 */
    int deleteByPrimaryKey(Integer useraddresstbId);

    int insert(UserAddress record);
    /*
     * 插入用户地址
     * @prame UserAddress 用户地址实体
     */
    int insertSelective(UserAddress record);
    /*
     * 查询用户地址
     * @prame useraddresstbId 用户地址id
     */
    UserAddress selectByPrimaryKey(Integer useraddresstbId);
    /*
     * 更新用户地址
     * @prame record 用户地址实体类 
     * 只更新不为空的项根据地址id来修改
     */
    int updateByPrimaryKeySelective(UserAddress record);
    /*
     * 更新用户地址
     * @prame record 用户地址实体类 
     * 不建议使用
     */
    int updateByPrimaryKey(UserAddress record);
    
    /*
     * 查询用户地址
     * @prame userid 用户id
     */
    List<UserAddress> selectByUserId(Integer userid);
    
    
    
    List<UserAddress> selectByUserTbKey(Integer usertbId);
}