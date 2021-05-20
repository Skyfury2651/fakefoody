package service;

import entity.Dish;
import entity.SqlCondition;
import repository.DishRepository;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DishService {

    private DishRepository dishRepository = new DishRepository();

    public Dish createDish(Dish dish) {
        System.out.println("start create dish");
        java.sql.Date date = new Date(System.currentTimeMillis());
        dish.setSellDate(date);
        dish.setUpdatedAt(date);
        dishRepository.save(dish);

        return dish;
    }

    public List<Dish> getListDish(int page,int perPage) {
        System.out.println("start get list dish");

        int totalItem = dishRepository.getTotalItem().size();
        int totalPage = totalItem / perPage;

        int currentPage = page;
        if (page > totalPage){
            currentPage = totalPage;
        }

        int lastPage = totalPage;

        ArrayList<Dish> myDish =  new ArrayList<Dish>(dishRepository.getListDish(page,perPage));



        return new ArrayList<>();
    }

    public Dish detailDish(String name) {
        if (name.length() == 0){
            name = "";
        }

        return dishRepository.getDetailDish(name);
    }

    public boolean updateDish(String id, Dish obj) throws InstantiationException, IllegalAccessException, SQLException {
        return dishRepository.update(id,obj);
    }

    public boolean deleteDish(String id) throws SQLException {
        return dishRepository.delete(id);
    }
}
