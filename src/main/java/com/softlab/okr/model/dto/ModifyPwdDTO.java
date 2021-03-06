package com.softlab.okr.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

/**
 * @program: okr
 * @description:
 * @author: radCircle
 * @create: 2021-07-08 16:10
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("VerifyPwdDto 更新密码接口传输类")
public class ModifyPwdDTO {

    @NotBlank(message = "用户名不能为空")
    @ApiModelProperty(value = "用户名", required = true, example = "123")
    private String username;

    @NotBlank(message = "旧密码不能为空")
    @ApiModelProperty(value = "旧密码", required = true, example = "202cb962ac59075b964b07152d234b70")
    private String oldPassword;

    @NotBlank(message = "新密码不能为空")
    @ApiModelProperty(value = "新密码", required = true, example = "202cb962ac59075b964b07152d234b70")
    private String newPassword;
}
