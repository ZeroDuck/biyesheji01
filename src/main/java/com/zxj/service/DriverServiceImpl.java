package com.zxj.service;

import com.zxj.dao.BusDriverMapper;
import com.zxj.pojo.BusDriver;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class DriverServiceImpl implements DriverService {


    @Autowired
    private BusDriverMapper busDriverMapper;

    public void setBusDriverMapper(BusDriverMapper busDriverMapper) {
        this.busDriverMapper = busDriverMapper;
    }

    @Override
    public int addDriver(BusDriver driver) {
        return busDriverMapper.addDriver(driver);
    }

    @Override
    public int updateDriver(BusDriver driver) {
        return busDriverMapper.updateDriver(driver);
    }

    @Override
    public int deleteDriver(int id) {
        return busDriverMapper.deleteDriver(id);
    }

    @Override
    public List<BusDriver> queryDriver() {
        return busDriverMapper.queryDriver();
    }

    @Override
    public BusDriver queryDriverById(int id) {
        return busDriverMapper.queryDriverById(id);
    }
}
