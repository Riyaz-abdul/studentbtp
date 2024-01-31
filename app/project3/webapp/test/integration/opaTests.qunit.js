sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project3/test/integration/FirstJourney',
		'project3/test/integration/pages/studenttableList',
		'project3/test/integration/pages/studenttableObjectPage'
    ],
    function(JourneyRunner, opaJourney, studenttableList, studenttableObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project3') + '/index.html'
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