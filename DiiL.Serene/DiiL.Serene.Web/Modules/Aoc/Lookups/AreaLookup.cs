using DiiL.Serene.Administration;
using DiiL.Serene.Administration.Entities;
using DiiL.Serene.Administration.Repositories;
using DiiL.Serene.Aoc.Entities;
using Serenity;
using Serenity.Abstractions;
using Serenity.ComponentModel;
using Serenity.Data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace DiiL.Serene.Aoc
{
    [LookupScript("Aoc.Area")]
    public class AreaLookup : MultiTenantRowLookupScript<UserRow>
    {
        private PermissionService permissionService;
        public AreaLookup()
        {
            permissionService = new PermissionService();
        }

        protected override List<UserRow> GetItems()
        {
            var users = base.GetItems();
            //var user = (UserDefinition)Authorization.UserDefinition;
            ////是管理员
            //if (user.Username == "admin")
            //{
            //    return users;
            //}

            //using (var connection = SqlConnections.NewByKey("Aoc"))
            //{
            //    var fld = RoleRow.Fields;
            //    RoleRow areaRole = null;
            //    areaRole = connection.TrySingle<RoleRow>(new Criteria(fld.RoleName) == "区域管理员");
            //    if (areaRole == null)
            //    {
            //        return null;
            //    }
            //    var userRoles = permissionService.GetUserRoles(user.UserId);
            //    //是区域管理员 只返回当前用户
            //    if (userRoles.Any(w => w == areaRole.RoleId))
            //    {
            //        List<UserRow> areas = new List<UserRow>();
            //        areas.Add(users.First(w => w.UserId == user.UserId));
            //        return areas;
            //    }
            //}
            return users;
        }

    }
}