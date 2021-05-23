package service;

import entity.DishCategory;
import repository.CategoryRepository;

import java.util.List;

public class CategoryService {
    private CategoryRepository categoryRepository = new CategoryRepository();
    public List<DishCategory> all(){
        return categoryRepository.getAll();
    }
}
