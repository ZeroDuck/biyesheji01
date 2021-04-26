package com.zxj.service;

import com.zxj.dao.CarMapper;
import com.zxj.pojo.Car;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CarServiceImpl implements CarService{

    @Autowired
    private CarMapper carMapper;

    public void setCarMapper(CarMapper carMapper) {
        this.carMapper = carMapper;
    }

    @Override
    public int addCar(Car car) {
        return carMapper.addCar(car);
    }

    @Override
    public int updateCar(Car car) {
        return carMapper.updateCar(car);
    }

    @Override
    public int deleteCar(int id) {
        return carMapper.deleteCar(id);
    }

    @Override
    public List<Car> queryCar() {
        return carMapper.queryCar();
    }

    @Override
    public Car queryCarById(int id) {
        return carMapper.queryCarById(id);
    }
}
