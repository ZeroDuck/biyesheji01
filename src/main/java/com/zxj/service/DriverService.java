package com.zxj.service;

import com.zxj.pojo.BusDriver;

import java.util.List;

public interface DriverService {
    int addDriver(BusDriver driver);




    //修改司机信息

    int updateDriver( BusDriver driver);

    // 删除司机

    int deleteDriver(int id);


    //查询所有司机、

    List<BusDriver> queryDriver();


    // 通过id查询司机
    BusDriver queryDriverById(int id);

}
