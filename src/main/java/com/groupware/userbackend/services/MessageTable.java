package com.groupware.userbackend.services;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.ArrayList;
import java.util.List;

public class MessageTable {

    public String SearchMessage (String req){

        String result = "";
        List<String> columnList = new ArrayList<String>();
        columnList.add("company_code");
        columnList.add("doc_id");
        columnList.add("create_user_id");
        columnList.add("comfirm_status");
        columnList.add("sent_type");
        columnList.add("sent_status");
        columnList.add("doc_type");
        columnList.add("subject");
        columnList.add("text");
        columnList.add("file_id");
        columnList.add("sent_date");
        columnList.add("create_date");
        columnList.add("update_date");

        boolean runFlg = true;
        JsonNode headerNode = null;
        JsonNode requestNode = null;
        JsonNode responseNode = null;


        //null処理
        if(req==null || req.equals(""))
        {
            result = "{\"header\" : {\"id\":\"u_s_0001\",\"code\":\"9999\",\"message\":\"ERROR(request is null)\"}, \"request\" : {},\"response\" : {}}";
            runFlg = false;
        }

        //JSON読み込み
        if(runFlg) {
            try {
                ObjectMapper mapper = new ObjectMapper();
                JsonNode reqNode = mapper.readTree(req);
                headerNode = reqNode.findPath("header");
                requestNode = reqNode.findPath("request");

                //任意項目
                try{responseNode = reqNode.findPath("response");} catch (Exception e){}
            } catch (Exception e) {
                e.printStackTrace();
                result = "{\"header\" : {\"id\":\"u_s_0001\",\"code\":\"9999\",\"message\":\"ERROR(check request data)\"}";
                result += "{\"request\":" + requestNode.asText() + "}";
                runFlg = false;
            }
        }

        //request処理
        if(runFlg) {
            try{
                for(String s : columnList)
                {
                    if (s.matches(".*date"))
                    {
                        String fromDate = requestNode.findPath(s+"from").asText();
                        String toDate = requestNode.findPath(s+"to").asText();

                        if(fromDate==null || fromDate.equals("") || toDate==null || toDate.equals(""))
                        {

                        }

                    }
                }
            }catch (Exception e){
                e.printStackTrace();
                runFlg = false;
            }
        }

        //response作成
        if(runFlg) {
            try{

            }catch (Exception e){
                e.printStackTrace();
                runFlg = false;
            }
        }



        System.out.println(headerNode);
        System.out.println(requestNode);
        System.out.println(responseNode);

        result = req;


        return result;
    }
}
