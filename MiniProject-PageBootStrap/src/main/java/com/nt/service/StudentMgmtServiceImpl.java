package com.nt.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.nt.entity.Student;
import com.nt.repository.IStudentRepository;

@Service
public class StudentMgmtServiceImpl implements IStudentMgmtService {
@Autowired
private IStudentRepository sRepo;

	@Override
	public Page<Student> showAll(Pageable pageable) {
	Page<Student> page = sRepo.findAll(pageable);
		return page;
	}

	@Override
	public String registerStudent(Student st) {
	int idVal = sRepo.save(st).getSno();
		return "Student is registered with id value"+idVal;
	}

	@Override
	public Student fetchById(int id) {
		return sRepo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid id"));
	}

	@Override
	public String updateStud(Student stud) {
	//load the Student
		Optional<Student> opt = sRepo.findById(stud.getSno());
	if(opt.isPresent()) {
		 Student stu = opt.get();
	//update the Student object
	  sRepo.save(stud);
	  return stud.getSno()+" Student is found and updated";
	}
	else {
		return stud.getSno()+" Student is not found for updation";
	   }
	}

	@Override
	public String deleteStudentById(int id) {
		sRepo.deleteById(id);		
		return id+"student id Student is deleted";
	}
}
