using caampus as camp from '../db/schema';

service MyService {
    @odata.draft.enabled
    entity studenttable             as projection on camp.student;

    entity markstable               as projection on camp.marks;
    entity LiabilityBasedOnAmount_1 as projection on camp.LiabilityBasedOnAmount_1;
    entity dummy                    as projection on camp.dummy;

    annotate LiabilityBasedOnAmount_1 with @UI.Chart #LiabilityBasedOnAmount_1: {
        ChartType          : #Donut,
        Measures           : [chartMeasure],
        MeasureAttributes  : [{
            Measure: chartMeasure,
            Role   : #Axis1
        }],
        Dimensions         : [chartDimension],
        DimensionAttributes: [{
            Dimension: chartDimension,
            Role     : #Category
        }]
    };




    annotate MyService.LiabilityBasedOnAmount_1 with @(UI: {

    LineItem #bar: [
        {
            $Type: 'UI.DataField',
            Label: 'id',
            Value: id
        },
        {
            $Type: 'UI.DataField',
            Label: 'chartDimension',
            Value: chartDimension
        },
        {
            $Type: 'UI.DataField',
            Label: 'chartMeasure',
            Value: chartMeasure
        },
        {
            $Type: 'UI.DataField',
            Label: 'years',
            Value: years
        },
  
    ],


    });

   


}
