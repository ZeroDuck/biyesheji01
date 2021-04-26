package com.zxj.controller;


import com.zxj.pojo.BusDriver;
import com.zxj.pojo.Car;
import com.zxj.pojo.User;
import com.zxj.service.CarServiceImpl;
import com.zxj.service.DriverServiceImpl;
import com.zxj.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/bus")
public class MyController {

    @Autowired
    private CarServiceImpl carService;
    @Autowired
    private DriverServiceImpl driverService;
    @Autowired
    private UserServiceImpl userService;

    public void setUserService(UserServiceImpl userService) {
        this.userService = userService;
    }

    public void setCarService(CarServiceImpl carService) {
        this.carService = carService;
    }

    public void setDriverService(DriverServiceImpl driverService) {
        this.driverService = driverService;
    }

    @RequestMapping("/allCar")
    public String CarList(Model model) {
        List<Car> carList = carService.queryCar();
        model.addAttribute("carList", carList);
        return "/car/allCar";
    }

    @RequestMapping("/toAddCar")
    public String toAddCar() {
        return "/car/addCar";
    }
    @RequestMapping("/addCar")
    public String addCar(Car car) {
        System.out.println(car);
        carService.addCar(car);
        return "redirect:/bus/allCar";
    }
    @RequestMapping("/toUpdateCar")
    public String toUpdateBook(Model model, int id) {
        Car car = carService.queryCarById(id);
        System.out.println(car);
        model.addAttribute("car", car);
        return "/car/updateCar";
    }
    @RequestMapping("/updateCar")
    public String updateCar(Model model, Car car) {
        System.out.println(car);
        carService.updateCar(car);
        Car car1 = carService.queryCarById(car.getId());
        model.addAttribute("car", car1);
        return "redirect:/bus/allCar";
    }
    @RequestMapping("/deleteCar/{id}")
    public String deleteCar(@PathVariable("id") int id) {
        carService.deleteCar(id);
        return "redirect:/bus/allCar";
    }



    //    司机操作


    @RequestMapping("/allDriver")
    public String allDriver(Model model) {
        List<BusDriver> driverList = driverService.queryDriver();
        System.out.println(driverList);
        model.addAttribute("DriverList", driverList);
        return "/driver/allDriver";
    }
    @RequestMapping("/toAddDriver")
    public String toAddDriver() {
        return "/driver/addDriver";
    }
    @RequestMapping("/addDriver")
    public String addDriver(BusDriver driver) {
        System.out.println(driver);
        int i = driverService.addDriver(driver);
        System.out.println(i);
        return "redirect:/bus/allDriver";
    }
    @RequestMapping("/toUpdateDriver")
    public String toUpdateDriver(Model model, int id) {
        BusDriver driver = driverService.queryDriverById(id);
        System.out.println(driver);
        model.addAttribute("driver", driver);
        return "/driver/updateDriver";
    }
    @RequestMapping("/updateDriver")
    public String updateDriver(Model model, BusDriver driver) {
        System.out.println(driver);
        driverService.updateDriver(driver);
        BusDriver driver1 = driverService.queryDriverById(driver.getId());
        model.addAttribute("driver", driver1);
        return "redirect:/bus/allDriver";
    }
    @RequestMapping("/deleteDriver/{id}")
    public String deleteDriver(@PathVariable("id") int id) {
        driverService.deleteDriver(id);
        return "redirect:/bus/allDriver";
    }


    //    用户操作
    @RequestMapping("/allUser")
    public String allUser(Model model) {
        List<User> userList = userService.queryUser();
        System.out.println(userList);
        model.addAttribute("userList", userList);
        return "/user/allUser";
    }
    @RequestMapping("/addUser")
    public String addUser(User user) {
        userService.addUser(user);
        return "redirect:/bus/register";
    }
    @RequestMapping("/toAddUser")
    public String toAddUser() {
        return "/user/addUser";
    }
    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Model model, int id) {
        User user = userService.queryUserById(id);
        int i = userService.updateUser(user);
        model.addAttribute("user", user);
        return "/user/updateUser";
    }
    @RequestMapping("/updateUser")
    public String updateUser(Model model, User user) {
        System.out.println(user);
        int i = userService.updateUser(user);
        User user1 = userService.queryUserById(user.getId());
        model.addAttribute("user", user1);
        return "redirect:/bus/allUser";
    }
    @RequestMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable("id") int id) {
        userService.deleteUser(id);
        return "redirect:/bus/allUser";
    }
    @RequestMapping("/login")
    public String login(User user) {
        User user1 = userService.queryUserById(user.getId());
        if (user.getPassword().equals(user1.getPassword())) {
            return "home";
        } else {
            return "loginDefeated";
        }
    }
    @RequestMapping("/register")
    public String register(Model model, User user) {
        model.addAttribute("userId", user.getId());
        return "user/register";
    }


    @RequestMapping("/home")
    public String home() {
        return "home";
    }


}
