/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-05-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   06-05-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class SpotifyController {
    private static const SPOTIFY_ACCOUNT_URL = 'https://accounts.spotify.com/api/token';
    private static const SPOTIFY_API_URL = 'https://accounts.spotify.com/api/token';
    private static const CLIENT_ID = 'https://accounts.spotify.com/api/token';
    private static const CLIENT_SECRET = 'https://accounts.spotify.com/api/token';

    public static void getToken(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(SPOTIFY_ACCOUNT_URL);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'apllication/json');
        
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserialize the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals:');
            for (Object animal: animals) {
                System.debug(animal);
            } 
        }
    }
}
