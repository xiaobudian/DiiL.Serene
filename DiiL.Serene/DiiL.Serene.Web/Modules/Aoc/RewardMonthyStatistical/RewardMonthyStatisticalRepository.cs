

namespace DiiL.Serene.Aoc.Repositories
{
    using Administration;
    using Administration.Entities;
    using Serenity;
    using Serenity.Data;
    using Serenity.Services;
    using System;
    using System.Data;
    using System.Linq;
    using MyRow = Entities.RewardMonthyStatisticalRow;

    public class RewardMonthyStatisticalRepository
    {
        private static MyRow.RowFields fld { get { return MyRow.Fields; } }
        private static PermissionService permissionService = new PermissionService();
        public SaveResponse Create(IUnitOfWork uow, SaveRequest<MyRow> request)
        {
            return new MySaveHandler().Process(uow, request, SaveRequestType.Create);
        }

        public SaveResponse Update(IUnitOfWork uow, SaveRequest<MyRow> request)
        {
            return new MySaveHandler().Process(uow, request, SaveRequestType.Update);
        }

        public DeleteResponse Delete(IUnitOfWork uow, DeleteRequest request)
        {
            return new MyDeleteHandler().Process(uow, request);
        }

        public RetrieveResponse<MyRow> Retrieve(IDbConnection connection, RetrieveRequest request)
        {
            return new MyRetrieveHandler().Process(connection, request);
        }

        public ListResponse<MyRow> List(IDbConnection connection, ListRequest request)
        {
            return new MyListHandler().Process(connection, request);
        }

        private class MySaveHandler : SaveRequestHandler<MyRow> { }
        private class MyDeleteHandler : DeleteRequestHandler<MyRow> { }
        private class MyRetrieveHandler : RetrieveRequestHandler<MyRow> { }
        private class MyListHandler : ListRequestHandler<MyRow>
        {

            protected override void PrepareQuery(SqlQuery query)
            {
                base.PrepareQuery(query);
                var user = (UserDefinition)Authorization.UserDefinition;

                using (var connection = SqlConnections.NewByKey("Aoc"))
                {
                    var flds = RoleRow.Fields;
                    RoleRow areaRole = null;
                    var userRoles = permissionService.GetUserRoles(user.UserId);
                    areaRole = connection.TrySingle<RoleRow>(new Criteria(flds.RoleName) == "平台商");
                    if (areaRole != null)
                    {
                        //是区域管理员
                        if (userRoles.Any(w => w == areaRole.RoleId))
                        {
                            query.Where(new Criteria(fld.PlatformId) == user.UserId);
                        }
                    }

                    areaRole = connection.TrySingle<RoleRow>(new Criteria(flds.RoleName) == "区域管理员");

                    if (areaRole != null)
                    {
                        //是区域管理员
                        if (userRoles.Any(w => w == areaRole.RoleId))
                        {
                            query.Where(new Criteria(fld.AreaId) == user.UserId);
                        }
                    }

                    areaRole = connection.TrySingle<RoleRow>(new Criteria(flds.RoleName) == "大区域管理员");
                    if (areaRole != null)
                    {
                        //是区域管理员
                        if (userRoles.Any(w => w == areaRole.RoleId))
                        {
                            query.Where(new Criteria(fld.BigAreaId) == user.UserId);
                        }
                    }
                }
            }
        }
    }
}