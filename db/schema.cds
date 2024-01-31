namespace caampus;

entity student {
    key sid        : Integer;
        sname      : String;
        sage       : Integer;
        saddress   : String;


        stutomarks : Composition of one marks
                         on stutomarks.child = $self;
}

entity marks {
    key sid     : Integer;
        total   : Integer;
        maths   : Integer;
        english : Integer;
        child   : Association to one student
                      on child.sid = sid;
}

entity LiabilityBasedOnAmount_1 {
    key id             : String;
        chartDimension : String
                                @Analytics.Dimension;
        chartMeasure   : Decimal(15, 2)
                                @Analytics.Measure;
        years          : String @Common.FilterDefaultValue: '2023'
                                @Analytics.Dimension
                                @Search.defaultSearchElement;
// table : Association to one Tableyears;
}


entity dummy {
    key id   : String;
        name : String
                      @Analytics.Dimension;
        age  : Integer
                      @Analytics.Measure;
        dob  : String @Common.FilterDefaultValue: '2000'
                      @Analytics.Dimension
                      @Search.defaultSearchElement;
// table : Association to one Tableyears;
}

annotate LiabilityBasedOnAmount_1 with @Aggregation.ApplySupported: {
    $Type               : 'Aggregation.ApplySupportedType',
    PropertyRestrictions: true
};

annotate dummy with @Aggregation.ApplySupported: {
    $Type               : 'Aggregation.ApplySupportedType',
    PropertyRestrictions: true
};
