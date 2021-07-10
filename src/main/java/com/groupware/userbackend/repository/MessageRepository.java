package com.groupware.userbackend.repository;

import com.groupware.userbackend.entity.Message;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Integer> {
	
	@Query(value = "SELECT * FROM d_message_tbl where user_id=:user_id", nativeQuery = true
	) public Message getMessageByUser(String user_id);

}
