/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-21-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   06-07-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class SalesforceConnect {
    
    public static void getCases(){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Case_Org/services/apexrest/Cases/');
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        // Deserialize the JSON string into collections of primitive data types.
        List<Object> results = (List<Object>) JSON.deserializeUntyped(res.getBody());
        for(Object obj : results){
            Map<String, Object> caseProps = (Map<String, Object>)obj;
            System.debug(caseProps.get('CaseNumber')+'-'+caseProps.get('Subject'));
        }
        System.debug(res.getBody());
    }
}
