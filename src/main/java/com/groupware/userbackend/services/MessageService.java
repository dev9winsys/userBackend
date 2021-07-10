package com.groupware.userbackend.services;

import com.groupware.userbackend.dto.MessageDto;
import java.util.List;

public interface MessageService {
	
	public MessageService saveMessage(MessageDto messageDto) throws Exception;

	public MessageService getMessageByUser(MessageDto messageDto) throws Exception;

	public List<MessageService> getAllMessageList() throws Exception;

}
