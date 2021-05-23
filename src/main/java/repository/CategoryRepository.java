package repository;

import entity.Dish;
import entity.DishCategory;
import helper.GenericModel;

import java.util.List;

public class CategoryRepository {
    private GenericModel<DishCategory> genericModel = new GenericModel<>(DishCategory.class);
    public List<DishCategory> getAll(){
        return genericModel.findAll();
    }
}
