package com.softlab.okr.model.enums.statusCode;

import com.softlab.okr.model.enums.BaseCode;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

/**
 * @Program: okr
 * @Description:
 * @Author: lulinzi
 * @Date: 2021-09-08 12:07
 **/
@AllArgsConstructor
@NoArgsConstructor
public enum BookStatus implements BaseCode {
    FREE(0, "空闲"),
    BORROW(1, "已借阅"),
    LOSE(2, "丢失");

    private Integer code;
    private String message;

    public Integer code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }


    public static String getMessage(Integer code) {
        for (BookStatus status : BookStatus.values()) {
            if (status.code.equals(code)) {
                return status.message;
            }
        }
        return null;
    }

    public static Integer getCode(String message) {
        for (BookStatus status : BookStatus.values()) {
            if (status.message.equals(message)) {
                return status.code;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return this.code().toString() + " " + this.message();
    }

}
