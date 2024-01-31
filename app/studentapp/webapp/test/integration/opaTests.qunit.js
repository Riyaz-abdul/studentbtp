sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'studentapp/test/integration/FirstJourney',
		'studentapp/test/integration/pages/studenttableList',
		'studentapp/test/integration/pages/studenttableObjectPage'
    ],
    function(JourneyRunner, opaJourney, studenttableList, studenttableObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('studentapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThestudenttableList: studenttableList,
					onThestudenttableObjectPage: studenttableObjectPage
                }
            },
            opaJourney.run
        );
    }
);