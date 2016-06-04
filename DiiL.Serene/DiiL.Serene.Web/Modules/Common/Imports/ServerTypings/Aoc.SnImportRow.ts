namespace DiiL.Serene.Aoc {
    export interface SnImportRow {
        ImportId?: number;
        UserId?: number;
        SellerId?: number;
        SellTime?: string;
        Score?: number;
        ProductVesionId?: number;
        ProductVesionName?: string;
        ProductExProperties?: string;
        ProductSerialId?: number;
        ProductSerialName?: string;
        ProductLineId?: number;
        ProductLineName?: string;
        ImportTime?: string;
        PlatformProviderManagerId?: number;
        AreaManagerId?: number;
        Year?: number;
        Month?: number;
        Sn?: string;
    }

    export namespace SnImportRow {
        export const idProperty = 'ImportId';
        export const nameProperty = 'ProductVesionName';
        export const localTextPrefix = 'Aoc.SnImport';

        export namespace Fields {
            export declare const ImportId: string;
            export declare const UserId: string;
            export declare const SellerId: string;
            export declare const SellTime: string;
            export declare const Score: string;
            export declare const ProductVesionId: string;
            export declare const ProductVesionName: string;
            export declare const ProductExProperties: string;
            export declare const ProductSerialId: string;
            export declare const ProductSerialName: string;
            export declare const ProductLineId: string;
            export declare const ProductLineName: string;
            export declare const ImportTime: string;
            export declare const PlatformProviderManagerId: string;
            export declare const AreaManagerId: string;
            export declare const Year: string;
            export declare const Month: string;
            export declare const Sn: string;
        }

        ['ImportId', 'UserId', 'SellerId', 'SellTime', 'Score', 'ProductVesionId', 'ProductVesionName', 'ProductExProperties', 'ProductSerialId', 'ProductSerialName', 'ProductLineId', 'ProductLineName', 'ImportTime', 'PlatformProviderManagerId', 'AreaManagerId', 'Year', 'Month', 'Sn'].forEach(x => (<any>Fields)[x] = x);
    }
}

