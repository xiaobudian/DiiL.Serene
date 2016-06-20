
namespace DiiL.Serene.Aoc {
    export interface SDistrictRow {
        DistrictId?: number;
        DistrictName?: string;
        CityId?: number;
    }

    export namespace SDistrictRow {
        export const idProperty = 'DistrictId';
        export const nameProperty = 'DistrictName';
        export const localTextPrefix = 'Aoc.SDistrict';

        export namespace Fields {
            export declare const DistrictId;
            export declare const DistrictName;
            export declare const CityId;
        }

        ['DistrictId', 'DistrictName', 'CityId'].forEach(x => (<any>Fields)[x] = x);
    }
}

