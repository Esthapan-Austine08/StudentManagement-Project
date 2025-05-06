package com.nt.entity;

import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Table(name = "STUDENT")
@Entity
@Data
@SQLDelete(sql="UPDATE STUDENT SET STATUS='inactive' WHERE SNO=?")
@SQLRestriction("STATUS <> 'inactive' ")
public class Student {
@Id
@SequenceGenerator(name="gen1",sequenceName = "stud_sno",initialValue=1008,allocationSize = 1)
@GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
@Column(name = "SNO")
private Integer sno;
@Column(name = "SNAME",length = 30)
private String sname;
@Column(name = "SMOBILE")
private long smobile;
@Column(name = "SQUALIFICATION",length = 30)
private String sqlfy="DEGREE";
@Column(name = "SPERCENT")
private Double spercent;
@Column(name="STATUS")
private String status="active";
}
