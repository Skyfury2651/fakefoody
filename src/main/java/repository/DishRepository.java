package repository;

import entity.Dish;
import helper.GenericModel;

public class DishRepository {
    private GenericModel<Dish> genericModel = new GenericModel<>(Dish.class);

    public boolean save(Dish dish){
        return genericModel.save(dish);
    }
}

