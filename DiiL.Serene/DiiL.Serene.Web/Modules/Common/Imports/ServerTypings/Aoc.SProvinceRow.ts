
namespace DiiL.Serene.Aoc {
    export interface SProvinceRow {
        ProvinceId?: number;
        ProvinceName?: string;
    }

    export namespace SProvinceRow {
        export const idProperty = 'ProvinceId';
        export const nameProperty = 'ProvinceName';
        export const localTextPrefix = 'Aoc.SProvince';

        export namespace Fields {
            export declare const ProvinceId;
            export declare const ProvinceName;
        }

        ['ProvinceId', 'ProvinceName'].forEach(x => (<any>Fields)[x] = x);
    }
}

