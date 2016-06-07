
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
        public class ScorePolicy
        {
            public const string Delete = "Aoc:ScorePolicy:Delete";
            public const string Modify = "Aoc:ScorePolicy:Modify";
            public const string View = "Aoc:ScorePolicy:View";
        }

        public const string General = "Aoc:General";
    }
}
