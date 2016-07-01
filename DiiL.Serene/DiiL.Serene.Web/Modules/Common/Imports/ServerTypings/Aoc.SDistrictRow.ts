namespace DiiL.Serene.Aoc {
    export interface SDistrictRow {
        DistrictId?: number;
        DistrictName?: string;
        CityId?: number;
        CityName?: string;
        ProvinceId?: number;
        ProvinceName?: string;
    }

    export namespace SDistrictRow {
        export const idProperty = 'DistrictId';
        export const nameProperty = 'DistrictName';
        export const localTextPrefix = 'Aoc.SDistrict';

        export namespace Fields {
            export declare const DistrictId: string;
            export declare const DistrictName: string;
            export declare const CityId: string;
            export declare const CityName: string;
            export declare const ProvinceId: string;
            export declare const ProvinceName: string;
        }

        ['DistrictId', 'DistrictName', 'CityId', 'CityName', 'ProvinceId', 'ProvinceName'].forEach(x => (<any>Fields)[x] = x);
    }
}

