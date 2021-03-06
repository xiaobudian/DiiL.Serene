﻿
namespace DiiL.Serene.Administration.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Administration.Role")]
    [BasedOnRow(typeof(Entities.RoleRow))]
    public class RoleForm
    {
        public Int32 TenantId { get; set; }
        public String RoleName { get; set; }
    }
}