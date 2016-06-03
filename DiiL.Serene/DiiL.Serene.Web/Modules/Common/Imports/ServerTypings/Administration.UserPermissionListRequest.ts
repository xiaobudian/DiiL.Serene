namespace DiiL.Serene.Administration {
    export interface UserPermissionListRequest extends Serenity.ServiceRequest {
        UserID?: number
        Module?: string
        Submodule?: string
    }
}

