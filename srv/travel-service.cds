using {sap.fe.cap.travel as my} from '../db/schema';

service TravelService @(path: '/processor') {

  entity Passenger as projection on my.Passenger;

}
