package com.example.rwbybackend.model.books;

import com.example.rwbybackend.model.actions.CheckEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode
@Table(name = "responsibles_book")
public class Responsible {

    @Id
    @Column(name = "id", nullable = false)
    private long responsibleId;
    @Column
    private String lastname;
    @Column
    private String name;
    @Column
    private String patronym;

}


