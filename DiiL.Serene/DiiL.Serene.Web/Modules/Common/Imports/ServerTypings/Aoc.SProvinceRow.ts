namespace DiiL.Serene.Aoc {
    export interface SProvinceRow {
        ProvinceId?: number;
        ProvinceName?: string;
        RegionId?: number;
        RegionName?: string;
    }

    export namespace SProvinceRow {
        export const idProperty = 'ProvinceId';
        export const nameProperty = 'ProvinceName';
        export const localTextPrefix = 'Aoc.SProvince';
        export const lookupKey = 'Aoc.SProvince';

        export function getLookup(): Q.Lookup<SProvinceRow> {
            return Q.getLookup<SProvinceRow>('Aoc.SProvince');
        }

        export namespace Fields {
            export declare const ProvinceId: string;
            export declare const ProvinceName: string;
            export declare const RegionId: string;
            export declare const RegionName: string;
        }

        ['ProvinceId', 'ProvinceName', 'RegionId', 'RegionName'].forEach(x => (<any>Fields)[x] = x);
    }
}

