package com.zcl.demo.common.response;

import com.zcl.demo.common.status.StatusCode;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**

 * @author  zcl

 * @create  2020/11/3 21:59

 * @desc  响应维护

 **/
@Component
public class CommonResponse {
    public static Map setPageResponse(Object data, Long recordsTotal, String responseCode, String responseMsg, boolean status) {
        Map<String, Object> responseResult = new HashMap<>();
        responseResult.put("data", data);// 响应数据
        responseResult.put("count", recordsTotal);//条数
        responseResult.put("code", responseCode);// 响应码
        responseResult.put("msg", responseMsg);// 响应提示信息
        responseResult.put("status", status); // 响应状态
        return responseResult;
    }

    public static Map setResponseData(Object data, String code, String msg, boolean status) {
        Map<String, Object> responseResult = new HashMap<>();
        responseResult.put("status", status); // 响应状态
        responseResult.put("code", code); // 响应码
        responseResult.put("msg", msg); // 响应提示信息
        responseResult.put("data", data); // 响应数据
        return responseResult;
    }


    public static Map setPageResponse(Object data, Long recordsTotal) {
        return setPageResponse(data, recordsTotal,
                StatusCode.SUCCESS.getCode(), "查询成功", true );
    }

    public static Map setResponseData(Object data) {
        return setResponseData(data, StatusCode.SUCCESS.getCode(), "操作成功", true);
    }
    public static Map setResponseMsg(String msg) {
        return setResponseData(null, StatusCode.SUCCESS.getCode(), msg, true);
    }
}
