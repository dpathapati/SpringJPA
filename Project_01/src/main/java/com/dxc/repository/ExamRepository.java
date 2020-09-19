package com.dxc.repository;

import org.springframework.data.repository.CrudRepository;

import com.dxc.beans.Exam;

public interface ExamRepository extends CrudRepository<Exam, String> {

}
