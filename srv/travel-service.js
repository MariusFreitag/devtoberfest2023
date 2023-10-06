const cds = require("@sap/cds");

class TravelService extends cds.ApplicationService {
  init() {
    const { Passenger } = this.entities;

    this.before("CREATE", "Passenger.drafts", async (req) => {
      const activeResults = await SELECT`CustomerID`.from(Passenger);
      const draftResults = await SELECT`CustomerID`.from(Passenger.drafts);
      let maxID = 0;
      for (const result of [...activeResults, ...draftResults]) {
        if (Number(result.CustomerID) > maxID)
          maxID = Number(result.CustomerID);
      }
      req.data.CustomerID = String(maxID + 1).padStart(6, 0);
    });

    return super.init();
  }
}
module.exports = { TravelService };
