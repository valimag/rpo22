package com.rpolabs.backend.models;

import javax.persistence.*;

@Entity // таблица в базе
@Table(name = "countries") //имя это таблицы countries
@Access(AccessType.FIELD) // разрешаем доступ к полям класса
public class Country {

    public Country() { }
    public Country(Long id) { this.id = id; }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    public long id;

    @Column(name = "name")
    public String name;

}
