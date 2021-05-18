package entity;

import hannotation.Column;
import hannotation.Entity;
import hannotation.Id;

@Entity(tableName = "dish_category")
public class DishCategory {
    @Id(autoIncreament = true)
    @Column(columnName = "id", columnType = "int")
    private int id;

    @Column(columnName = "name", columnType = "varchar(255)")
    private String name;
}
