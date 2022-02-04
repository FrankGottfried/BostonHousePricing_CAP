// proxy entry for the hana db table

//using app.interactions from '../db/interactions';
using V_DATASET from '../db/interactions';


service CatalogService {


define type  PredictionResult {
  ID : Integer;
  SCORE: Decimal(10,3);
  MEDV: Decimal(10,3)
};

 @readonly
 entity V_Dataset
    as projection on V_DATASET;


function predict() returns PredictionResult;


}
