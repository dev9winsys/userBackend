package com.groupware.userbackend.dto;

import java.time.LocalDateTime;

public class MessageDto {
    private String company_code;
    private String doc_id;
    private String create_user_id;
    private String comfirm_status;
    private String sent_type;
    private String sent_status;
    private String doc_type;
    private String subject;
    private String text;
    private String file_id;
    private LocalDateTime sent_date;
    private LocalDateTime create_date;
    private LocalDateTime update_date;

    public String getCompany_code(){ return company_code; }
    public void setCompany_code(String company_code) { this.company_code = company_code; }
    public String getDoc_id(){ return doc_id; }
    public void setDoc_id(String doc_id) { this.doc_id = doc_id; }
    public String getCreate_user_id(){ return create_user_id; }
    public void setCreate_user_id(String create_user_id) { this.create_user_id = create_user_id; }
    public String getComfirm_status(){ return comfirm_status; }
    public void setComfirm_status(String comfirm_status) { this.comfirm_status = comfirm_status; }
    public String getSent_type(){ return sent_type; }
    public void setSent_type(String sent_type) { this.sent_type = sent_type; }
    public String getSent_status(){ return sent_status; }
    public void setSent_status(String sent_status) { this.sent_status = sent_status; }
    public String getDoc_type(){ return doc_type; }
    public void setDoc_type(String doc_type) { this.doc_type = doc_type; }
    public String getSubject(){ return subject; }
    public void setSubject(String subject) { this.subject = subject; }
    public String getText(){ return text; }
    public void setText(String text) { this.text = text; }
    public String getFile_id(){ return file_id; }
    public void setFile_id(String file_id) { this.file_id = file_id; }
    public LocalDateTime getSent_date(){ return sent_date; }
    public void setSent_date(LocalDateTime sent_date) { this.sent_date = sent_date; }
    public LocalDateTime getCreate_date(){ return create_date; }
    public void setCreate_date(LocalDateTime create_date) { this.create_date = create_date; }
    public LocalDateTime getUpdate_date(){ return update_date; }
    public void setUpdate_date(LocalDateTime update_date) { this.update_date = update_date; }

}
