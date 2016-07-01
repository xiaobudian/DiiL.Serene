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

namespace DiiL.Serene.Aoc
{
    [LookupScript("Aoc.Area")]
    public class AreaLookup : MultiTenantRowLookupScript<Administration.Entities.UserRow>
    {
        private PermissionService permissionService;
        public AreaLookup()
        {
            permissionService = new PermissionService();
        }
        protected override void ApplyOrder(SqlQuery query)
        {
            base.ApplyOrder(query);
        }

        public override string GetScript()
        {
            return base.GetScript();
        }
        protected override List<UserRow> GetItems()
        {
            var users = base.GetItems();
            var user = (UserDefinition)Authorization.UserDefinition;
            if (user.Username != "admin")
            {
                var areas = users;
                foreach (var u in users)
                {
                    var roles = permissionService.GetUserRoles(u.UserId.Value);
                    var fld = RoleRow.Fields;
                    foreach (var roleId in roles)
                    {
                        using (var connection = SqlConnections.NewByKey("Aoc"))
                        {

                            var role = connection.Single<RoleRow>(q => q
                                     .Select(fld.RoleName)
                                     .Where(new Criteria(fld.RoleId) == roleId));

                            if (role.RoleName != "区域管理员")
                            {
                                areas.Remove(u);
                            }
                        }
                    }
                }

                return areas;
            }
            else
            {
                return users;
            }

        }
        protected override void PrepareQuery(SqlQuery query)
        {
            base.PrepareQuery(query);

            //    var r = new UserRow();
            //    var user = (UserDefinition)Authorization.UserDefinition;
            //    var roles = permissionService.GetUserRoles(user.UserId);
            //    var fld = RoleRow.Fields;
            //    foreach (var roleId in roles)
            //    {
            //        using (var connection = SqlConnections.NewByKey("Aoc"))
            //        {

            //            var role = connection.Single<RoleRow>(q => q
            //                     .Select(fld.RoleName)
            //                     .Where(new Criteria(fld.RoleId) == roleId));

            //            if (role.RoleName == "区域管理员")
            //            {
            //                query.Where(r.)
            //            }


            //        }
            //    }
            //var user = (UserDefinition)Authorization.UserDefinition;
            ////if (!Authorization.HasPermission(Administration.PermissionKeys.Tenants) || user.TenantId != 4)
            ////{
            ////    query.Where(r.TenantIdField == user.TenantId);
            ////}
            //UserRoleRepository urr = new UserRoleRepository();
            //urr.List(new UnitOfWork(new SqlConnection() { ConnectionString="" }),new Administration.UserRoleListRequest { })
            //query.Where(r.)
        }
    }
}