using TravelService as service from '../srv/travel-service';
using from '../db/master-data';

annotate TravelService.Passenger with @odata.draft.enabled;
annotate TravelService.Passenger with @Common.SemanticKey: [CustomerID];
annotate TravelService.Passenger with @Capabilities.Deletable: false;

annotate service.Passenger with @(
  UI.LineItem                        : [
    {
      $Type: 'UI.DataField',
      Value: CustomerID,
      Label: '{i18n>LastName}',
    },
    {
      $Type: 'UI.DataField',
      Value: FirstName,
      Label: '{i18n>FirstName}',
    },
    {
      $Type: 'UI.DataField',
      Value: CountryCode_code,
      Label: '{i18n>Country}',
    }
  ],
  UI.FieldGroup #General             : {
    Label: 'General',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: Title
      },
      {
        $Type: 'UI.DataField',
        Value: FirstName
      },
      {
        $Type: 'UI.DataField',
        Value: LastName
      }
    ]
  },
  UI.FieldGroup #WizardGeneral       : {
    Label: 'General',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: Title
      },
      {
        $Type: 'UI.DataField',
        Value: FirstName
      },
      {
        $Type: 'UI.DataField',
        Value: LastName
      }
    ]
  },
  UI.FieldGroup #Address             : {
    Label: 'Address',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: Street
      },
      {
        $Type: 'UI.DataField',
        Value: PostalCode
      },
      {
        $Type: 'UI.DataField',
        Value: City
      },
      {
        $Type: 'UI.DataField',
        Value: CountryCode_code
      }
    ]
  },
  UI.FieldGroup #WizardAddress       : {
    Label: 'Address',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: Street
      },
      {
        $Type: 'UI.DataField',
        Value: PostalCode
      },
      {
        $Type: 'UI.DataField',
        Value: City
      },
      {
        $Type: 'UI.DataField',
        Value: CountryCode_code
      }
    ]
  },
  UI.FieldGroup #ContactDetails      : {
    Label: 'Contact Details',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: PhoneNumber
      },
      {
        $Type: 'UI.DataField',
        Value: EMailAddress
      }
    ]
  },
  UI.FieldGroup #WizardContactDetails: {
    Label: 'Contact Details',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: PhoneNumber
      },
      {
        $Type: 'UI.DataField',
        Value: EMailAddress
      }
    ]
  }
);

annotate service.Passenger with @(UI.SelectionFields: []);
