package com.zxj.service;

import com.zxj.pojo.Car;

import java.util.List;

public interface CarService {
    //增加汽车

    int addCar(Car car);


    //修改车信息

    int updateCar(Car car);

    // 删除车

    int deleteCar(int id);


    //查询所有车、

    List<Car> queryCar();


    // 通过id查询车
    Car queryCarById(int id);


}
