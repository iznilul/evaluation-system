package com.softlab.okr.controller;

import com.github.pagehelper.PageInfo;
import com.softlab.okr.annotation.Auth;
import com.softlab.okr.model.bo.RoleResourceBo;
import com.softlab.okr.model.dto.LoginLogDTO;
import com.softlab.okr.model.dto.RegisterDTO;
import com.softlab.okr.model.dto.ResourceDTO;
import com.softlab.okr.model.entity.LoginLog;
import com.softlab.okr.model.vo.ResourceVO;
import com.softlab.okr.service.LoginLogService;
import com.softlab.okr.service.ResourceService;
import com.softlab.okr.service.UserEntityService;
import com.softlab.okr.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 角色
 *
 * @author RudeCrab
 */
@Validated
@RestController
@RequestMapping("/api/admin")
@Api(tags = "管理员操作")
@Auth(id = 2000, name = "管理员操作")
public class AdminController {

    @Autowired
    private UserEntityService userEntityService;

    @Autowired
    private ResourceService resourceService;

    @Autowired
    private LoginLogService loginLogService;

    @ApiOperation("注册用户")
    @PostMapping("register")
    @Auth(id = 1, name = "注册用户")
    public Result register(@Validated @RequestBody RegisterDTO dto) {

        if (userEntityService.getByUsername(dto.getUsername()) == null) {
            userEntityService.register(dto);
            return Result.success();
        } else {
            return Result.failure();
        }
    }

    @ApiOperation("删除用户")
    @GetMapping("removeByUsername")
    @Auth(id = 2, name = "删除用户")
    public Result removeByUsername(
            @NotBlank(message = "username不能为空") @RequestParam("username") String username) {

        if (userEntityService.getByUsername(username) != null) {
            userEntityService.removeByUsername(username);
            return Result.success();
        } else {
            return Result.failure();
        }
    }

    @ApiOperation("重载管理员资源")
    @GetMapping("reloadAdminRoleResource")
    @Auth(id = 3, name = "重载管理员资源")
    public Result reloadAdminRoleResource() {
        RoleResourceBo bo = new RoleResourceBo(1, resourceService.getResourceIds("admin"));
        resourceService.reloadRoleResource(bo);
        return Result.success();
    }

    @ApiOperation("重载用户资源")
    @GetMapping("reloadUserRoleResource")
    @Auth(id = 4, name = "重载用户资源")
    public Result reloadUserRoleResource() {
        RoleResourceBo bo = new RoleResourceBo(2, resourceService.getResourceIds("user"));
        resourceService.reloadRoleResource(bo);
        return Result.success();
    }

    @ApiOperation("更改接口开放状态")
    @GetMapping("modifyResourceStatus")
    @Auth(id = 5, name = "更改接口开放状态")
    public Result modifyResourceStatus(
            @NotNull(message = "resourceId不能为空") @RequestParam("resourceId") int resourceId) {
        if (resourceService.modifyResourceStatus(resourceId) == 1) {
            return Result.success();
        } else {
            return Result.failure();
        }
    }

    @ApiOperation("获取资源接口")
    @PostMapping("getResourceByCond")
    @Auth(id = 6, name = "获取资源接口")
    public Result getResourceByCond(@RequestBody ResourceDTO dto) {
        PageInfo<ResourceVO> pageInfo = resourceService.getResourceList(dto);
        if (pageInfo.getSize() > 0) {
            return Result.success(pageInfo);
        } else { // 必须得这么写，不然分页查询有bug
            dto.setIndex(1);
            pageInfo = resourceService.getResourceList(dto);
            if (pageInfo.getSize() > 0) {
                return Result.success(pageInfo);
            } else {
                return Result.failure();
            }
        }
    }

    @PostMapping("getLoginLogByCond")
    @ApiOperation("登录日志列表")
    @Auth(id = 25, name = "登录日志列表")
    public Result getLoginLogList(@RequestBody @Validated LoginLogDTO dto) {
        System.out.println(dto);

        PageInfo<LoginLog> list = loginLogService.getByCond(dto);
        if (list.getSize() > 0) {
            return Result.success(list);
        } else {
            return Result.failure();
        }
    }
}
