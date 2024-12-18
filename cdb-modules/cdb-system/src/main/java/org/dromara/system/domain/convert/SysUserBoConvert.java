package org.dromara.system.domain.convert;

import io.github.linpeilie.BaseMapper;
import org.dromara.system.api.domain.bo.RemoteOperLogBo;
import org.dromara.system.api.domain.bo.RemoteUserBo;
import org.dromara.system.domain.bo.SysOperLogBo;
import org.dromara.system.domain.bo.SysUserBo;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;
import org.mapstruct.ReportingPolicy;
import org.mapstruct.factory.Mappers;

/**
 * 用户信息转换器
 *
 */
@Mapper(componentModel = MappingConstants.ComponentModel.SPRING, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface SysUserBoConvert extends BaseMapper<RemoteUserBo, SysUserBo> {

    /**
     * RemoteUserBoToSysUserBo
     * @param remoteUserBo 待转换对象
     * @return 转换后对象
     */
    @Mapping(target = "roleIds", ignore = true)
    @Mapping(target = "postIds", ignore = true)
    SysUserBo convert(RemoteUserBo remoteUserBo);
}
