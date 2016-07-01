
using System;

namespace DiiL.Serene.Aoc
{
    /// <summary>
    /// This class contains some permission key constants solely for
    /// easy access and intellisense purposes.
    /// 
    /// Please note that adding a permission here won't show it
    /// in user permissions dialog. In fact, Serenity doesn't
    /// care about this class at all.
    /// 
    /// To show a new permission in user/role permission dialog, just use
    /// its string key with ReadPermission / ModifyPermission / 
    /// DeletePermission / PageAuthorize / ServiceAuthorize etc. attributes 
    /// and Serenity will auto discover them at application start.
    /// 
    /// Permission tree hierarchy in dialog is determined by colons (:)
    /// in permission keys.
    /// </summary>
    public class PermissionKeys
    {

        public class StatusCollection
        {
            public const string Delete = "Aoc:StatusCollection:Delete";
            public const string Modify = "Aoc:StatusCollection:Modify";
            public const string View = "Aoc:StatusCollection:View";
        }

        public const string General = "Aoc:General";
        public class ScorePolicy
        {
            public const string Delete = "Aoc:ScorePolicy:Delete";
            public const string Modify = "Aoc:ScorePolicy:Modify";
            public const string View = "Aoc:ScorePolicy:View";
        }

        public class ProductLine
        {
            public const string Delete = "Aoc:ProductLine:Delete";
            public const string Modify = "Aoc:ProductLine:Modify";
            public const string View = "Aoc:ProductLine:View";
        }

        public class SnGenerate
        {
            public const string Delete = "Aoc:SnGenerate:Delete";
            public const string Modify = "Aoc:SnGenerate:Modify";
            public const string View = "Aoc:SnGenerate:View";
        }

        public class ProductSerial
        {
            public const string Delete = "Aoc:ProductSerial:Delete";
            public const string Modify = "Aoc:ProductSerial:Modify";
            public const string View = "Aoc:ProductSerial:View";
        }

        public class Tenants
        {
            public const string Delete = "Aoc:Tenants:Delete";
            public const string Modify = "Aoc:Tenants:Modify";
            public const string View = "Aoc:Tenants:View";
        }

        public class Region
        {
            public const string Delete = "Aoc:Region:Delete";
            public const string Modify = "Aoc:Region:Modify";
            public const string View = "Aoc:Region:View";
        }

        public class ShopGrade
        {
            public const string Delete = "Aoc:ShopGrade:Delete";
            public const string Modify = "Aoc:ShopGrade:Modify";
            public const string View = "Aoc:ShopGrade:View";
        }

        public class SProvince
        {
            public const string Delete = "Aoc:SProvince:Delete";
            public const string Modify = "Aoc:SProvince:Modify";
            public const string View = "Aoc:SProvince:View";
        }
        public class SCity
        {
            public const string Delete = "Aoc:SCity:Delete";
            public const string Modify = "Aoc:SCity:Modify";
            public const string View = "Aoc:SCity:View";
        }
        public class SDistrict
        {
            public const string Delete = "Aoc:SDistrict:Delete";
            public const string Modify = "Aoc:SDistrict:Modify";
            public const string View = "Aoc:SDistrict:View";
        }
        public class ManagerRole
        {
            public const string Delete = "Aoc:ManagerRole:Delete";
            public const string Modify = "Aoc:ManagerRole:Modify";
            public const string View = "Aoc:ManagerRole:View";
        }
        public static class ManagerAccount
        {
            public const string Delete = "Aoc:ManagerAccount:Delete";
            public const string Modify = "Aoc:ManagerAccount:Modify";
            public const string View = "Aoc:ManagerAccount:View";
        }
        public static class Sn
        {
            public const string Delete = "Aoc:Sn:Delete";
            public const string Modify = "Aoc:Sn:Modify";
            public const string View = "Aoc:Sn:View";
        }
        public static class Agreement
        {
            public const string Delete = "Aoc:Agreement:Delete";
            public const string Modify = "Aoc:Agreement:Modify";
            public const string View = "Aoc:Agreement:View";
        }

        public static class SnImport
        {
            public const string Delete = "Aoc:SnImport:Delete";
            public const string Modify = "Aoc:SnImport:Modify";
            public const string View = "Aoc:SnImport:View";
        }

        public static class RewardMonthyStatistical
        {
            public const string Delete = "Aoc:RewardMonthyStatistical:Delete";
            public const string Modify = "Aoc:RewardMonthyStatistical:Modify";
            public const string View = "Aoc:RewardMonthyStatistical:View";
        }


    }

}
