sap.ui.require(
  [
    "sap/fe/test/JourneyRunner",
    "maintainpassengers/test/integration/FirstJourney",
  ],
  function (JourneyRunner, opaJourney) {
    "use strict";
    var JourneyRunner = new JourneyRunner({
      // start index.html in web folder
      launchUrl: sap.ui.require.toUrl("maintainpassengers") + "/index.html",
    });

    JourneyRunner.run(
      {
        pages: {},
      },
      opaJourney.run,
    );
  },
);
