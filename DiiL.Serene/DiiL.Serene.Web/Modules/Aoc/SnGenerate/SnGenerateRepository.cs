

namespace DiiL.Serene.Aoc.Repositories
{
    using Entities;
    using Serenity;
    using Serenity.Data;
    using Serenity.Services;
    using System;
    using System.Collections.Generic;
    using System.Data;
    using Utility;
    using MyRow = Entities.SnGenerateRow;

    public class SnGenerateRepository
    {
        private static MyRow.RowFields fld { get { return MyRow.Fields; } }

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

        private class MySaveHandler : SaveRequestHandler<MyRow>
        {
            /// <summary>
            /// 为实体添加当前用户ID
            /// </summary>
            protected override void ValidateRequest()
            {
                if (IsCreate || IsUpdate)
                {
                    Int32 uid = ((UserDefinition)Authorization.UserDefinition).UserId;
                    Row.ManagerAccountId = uid;
                }
                base.ValidateRequest();
            }

            protected override void AfterSave()
            {
                base.AfterSave();
                GenerateSN(Row);
            }

            public class Test
            {
                public int generateTaskId { get; set; }
                public string number { get; set; }
                public int? productVersionId { get; set; }
                public string snPrefix { get; set; }
                public int? snValue { get; set; }
                public string snLast2Char { get; set; }
                public string status { get; set; }
            }

            private void GenerateSN(SnGenerateRow sn)
            {
                string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                var buffer = new List<Test>();
                var random = new Random();
                for (int i = sn.RegionBegin.Value; i <= sn.RegionEnd.Value; i++)
                {
                    string randomString = chars[random.Next(chars.Length)].ToString() + chars[random.Next(chars.Length)];
                    string snVFmtTag = "{0:D" + (sn.Length - sn.Prefix.Length) + "}";
                    string snStr = string.Format("{0}{1}{2}", sn.Prefix, string.Format(snVFmtTag, i), randomString);
                    var snModel = new Test
                    {
                        generateTaskId = sn.Id.Value,
                        number = snStr,
                        snPrefix = sn.Prefix,
                        snValue = i,
                        snLast2Char = randomString,
                        productVersionId = sn.ProductVersionId,
                        status = "有效"
                    };
                    buffer.Add(snModel);

                }
                DataTable dt = ModelExtension.ListToDataTable<Test>(buffer);

                var cs = SqlConnections.GetConnectionString("Aoc");

                var cb = cs.ProviderFactory.CreateConnectionStringBuilder();
                cb.ConnectionString = cs.ConnectionString;

                new DBExtension().SqlBulkCopyByDatatable(cb.ConnectionString + ";persist security info=True;timeout=60;MultipleActiveResultSets=True;App=EntityFramework", "SN", dt);

            }
        }
        private class MyDeleteHandler : DeleteRequestHandler<MyRow> { }
        private class MyRetrieveHandler : RetrieveRequestHandler<MyRow> { }
        private class MyListHandler : ListRequestHandler<MyRow> { }
    }
}