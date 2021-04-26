package com.zxj.dao;

import com.zxj.pojo.BusDriver;
import com.zxj.pojo.User;

import java.util.List;

public interface UserMapper {

//增加司机

    int addUser(User user);




    //修改司机信息

    int updateUser(User user);

    // 删除司机

    int deleteUser(int id);


    //查询所有司机、

    List<User> queryUser();


    // 通过id查询司机
    User queryUserById(int id);

}
