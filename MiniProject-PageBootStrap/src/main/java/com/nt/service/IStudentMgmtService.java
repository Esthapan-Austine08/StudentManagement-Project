package com.nt.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.nt.entity.Student;

public interface IStudentMgmtService {
	public Page<Student> showAll(Pageable pageable);
	public String registerStudent(Student st);
	public Student fetchById(int id);
	public String updateStud(Student stud);
	public String deleteStudentById(int id);
}
