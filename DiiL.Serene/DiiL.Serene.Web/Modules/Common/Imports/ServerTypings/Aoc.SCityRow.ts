
namespace DiiL.Serene.Aoc {
    export interface SCityRow {
        CityId?: number;
        ProvinceId?: number;
        CityName?: string;
        AreaCode?: string;
        ZipCode?: string;
        ProvinceProvinceName?: string;
    }

    export namespace SCityRow {
        export const idProperty = 'CityId';
        export const nameProperty = 'CityName';
        export const localTextPrefix = 'Aoc.SCity';

        export namespace Fields {
            export declare const CityId;
            export declare const ProvinceId;
            export declare const CityName;
            export declare const AreaCode;
            export declare const ZipCode;
            export declare const ProvinceProvinceName: string;
        }

        ['CityId', 'ProvinceId', 'CityName', 'AreaCode', 'ZipCode', 'ProvinceProvinceName'].forEach(x => (<any>Fields)[x] = x);
    }
}

