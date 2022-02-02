// proxy entry for the hana db table

//using app.interactions from '../db/interactions';
using V_DATASET from '../db/interactions';


service CatalogService {

 @readonly
 entity V_Dataset
    as projection on V_DATASET;
}