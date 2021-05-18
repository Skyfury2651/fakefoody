package entity;

import hannotation.Column;
import hannotation.Entity;
import hannotation.Id;
import hannotation.Validate;

import java.sql.Date;

@Entity(tableName = "dish")
public class Dish {
    @Id(autoIncreament = true)
    @Column(columnName = "id", columnType = "int")
    private int id;

    @Column(columnName = "code", columnType = "varchar(255)")
    private String code;

    @Validate(required = true, min = 7 , requiredMessage = "Name can't be empty")
    @Column(columnName = "name", columnType = "varchar(255)")
    private String name;

    @Validate(required = true, requiredMessage = "Category can't be empty")
    @Column(columnName = "category_id", columnType = "int")
    private int CategoryId;

    @Column(columnName = "description", columnType = "varchar(255)")
    private String Description;

    @Column(columnName = "avatar", columnType = "varchar(255)")
    private String Avatar;

    @Validate()
    @Column(columnName = "price", columnType = "double")
    private double price;

    @Column(columnName = "status", columnType = "int(20)")
    private int status;

    @Column(columnName = "sell_date", columnType = "date")
    private Date sellDate;

    @Column(columnName = "updated_at", columnType = "date")
    private Date updatedAt;

    public Dish(String code, String name, int categoryId, String description, String avatar, double price) {
        this.code = code;
        this.name = name;
        CategoryId = categoryId;
        Description = description;
        Avatar = avatar;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getCategoryId() {
        return CategoryId;
    }

    public void setCategoryId(int categoryId) {
        CategoryId = categoryId;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getAvatar() {
        return Avatar;
    }

    public void setAvatar(String avatar) {
        Avatar = avatar;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getSellDate() {
        return sellDate;
    }

    public void setSellDate(Date sellDate) {
        this.sellDate = sellDate;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
}
