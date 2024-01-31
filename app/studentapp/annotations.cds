using MyService as service from '../../srv/service';

annotate service.studenttable with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'sid',
            Value : sid,
            
        },
       
        
        {  
            $Type : 'UI.DataField',
            Label : 'sage',
            Value : sage,
        }, 

        {
            $Type : 'UI.DataField',
            Label : 'sname',
            Value : sname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'saddress',
            Value : saddress,
        },
    ]
);
annotate service.studenttable with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'sid',
                Value : sid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sname',
                Value : sname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sage',
                Value : sage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'saddress',
                Value : saddress,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'stom',
            ID : 'stom',
            Target : '@UI.FieldGroup#stom',
        },
    ]
);
annotate service.studenttable with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.studenttable with @(
    UI.SelectionPresentationVariant #table1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.studenttable with @(
    UI.HeaderInfo : {
        TypeName : 'marksss',
        TypeNamePlural : 'details',
        Title : {
            $Type : 'UI.DataField',
            Value : sid,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : sname,
        },
        TypeImageUrl : 'sap-icon://accept',
    }
);
annotate service.studenttable with @(
    UI.SelectionFields : [
        sid,
    ]
);
annotate service.studenttable with {
    sid @Common.Label : 'sid'
};
annotate service.studenttable with @(
    UI.FieldGroup #stom : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : stutomarks.sid,
                Label : 'sid',
            },{
                $Type : 'UI.DataField',
                Value : stutomarks.total,
                Label : 'total',
            },{
                $Type : 'UI.DataField',
                Value : stutomarks.maths,
                Label : 'maths',
            },{
                $Type : 'UI.DataField',
                Value : stutomarks.english,
                Label : 'english',
            },],
    }
);
