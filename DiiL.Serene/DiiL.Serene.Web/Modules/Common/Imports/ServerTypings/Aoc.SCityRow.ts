namespace DiiL.Serene.Aoc {
    export interface SCityRow {
        CityId?: number;
        ProvinceId?: number;
        CityName?: string;
        AreaCode?: string;
        ZipCode?: string;
        ProvinceName?: string;
    }

    export namespace SCityRow {
        export const idProperty = 'CityId';
        export const nameProperty = 'CityName';
        export const localTextPrefix = 'Aoc.SCity';

        export namespace Fields {
            export declare const CityId: string;
            export declare const ProvinceId: string;
            export declare const CityName: string;
            export declare const AreaCode: string;
            export declare const ZipCode: string;
            export declare const ProvinceName: string;
        }

        ['CityId', 'ProvinceId', 'CityName', 'AreaCode', 'ZipCode', 'ProvinceName'].forEach(x => (<any>Fields)[x] = x);
    }
}

