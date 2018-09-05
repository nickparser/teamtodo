package com.nick.example.repository;

import com.nick.example.domain.Subject;
import com.nick.example.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface SubjectRepository extends CrudRepository<Subject, Long> {

    Iterable<Subject> findSubjectsByAuthor(User author);
}
