public with sharing class ApexRestCalloutDemo {
   
   
   public static void getUsersDemo(){
    
    HTTP httpObj = new HTTP();
    HTTPRequest req = new HTTPRequest();
    req.setEndpoint('https://reqres.in/api/users');
    req.setHeader('Content-Type', 'application/json');
    req.setMethod('GET');
    //req.setBody(''); {}

   
    HTTPResponse res = new HTTPResponse();
    res = httpObj.send(req);

    System.debug('@@@response body--' + res.getBody());
   }

   public static void createUserDemo(){

    HTTP httpObj = new HTTP();
    HTTPRequest req = new HTTPRequest();
    req.setEndpoint('https://reqres.in/api/users');
    req.setHeader('Content-Type', 'application/json');
    req.setMethod('POST');
    req.setBody('{"name" : "Jon", "job" : "leader"}');

    HTTPResponse res = new HTTPResponse();
    res = httpObj.send(req);

    System.debug('@@@response body--' + res.getBody());
   }

}