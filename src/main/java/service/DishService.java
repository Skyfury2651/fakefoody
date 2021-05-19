package service;

import entity.Dish;
import repository.DishRepository;

import java.sql.Date;

public class DishService {

    private DishRepository dishRepository = new DishRepository();

    public Dish createDish(Dish dish){
        System.out.println("start create dish");
        java.sql.Date date = new Date(System.currentTimeMillis());
        dish.setSellDate(date);
        dish.setUpdatedAt(date);
        dishRepository.save(dish);

        return  dish;
    }

    public Dish getListDish(Dish dish){
        System.out.println("start get list dish");

        return new Dish();
    }

    public Dish detailDish(){
        return new Dish();
    }

    public Dish updateDish(){
        return new Dish();
    }

    public boolean deleteDish(){
        return false;
    }
}
