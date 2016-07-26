## What are some common HTTP status codes?
* **200 OK** - request succeeded
* **300 Multiple Choices** - requested resource has different choices and cannot be resolved into one. 
* **301 Moved Permanently** - the requested resource has been assigned a new permanent URI 
* **302 Found** - The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.
* **304 Not Modified** - The purpose of this feature is to allow efficient updates of local cache information (including relevant metainformation) without requiring the overhead of multiple HTTP requests (e.g. a HEAD followed by a GET) and minimizing the transmittal of information already known by the requesting client (usually a caching proxy).
* **307 Temporary Redirect** - The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
* **400 Bad Request** - The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
* **401 Unauthorized** - The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
* **403 Forbidden** - The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
* **404 Not Found** - The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.
* **410 Gone** - The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval.

If the server does not know, or has no facility to determine, whether or not the condition is permanent, the status code 404 Not Found SHOULD be used instead. This response is cacheable unless indicated otherwise.
* **500 Internal Server Error** - The server encountered an unexpected condition which prevented it from fulfilling the request.
* **501 Not Implemented** - The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.
* **503 Service Unavailable** - Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:

	* server crash
	* server maintenance
	* server overload
	* server maliciously being attacked
	* a website has used up its allotted bandwidth
	* server may be forbidden to return the requested document
This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem.

If you do not get service back soon, contact your web host as they would know the best. Some web hosts have server status pages you can check.
* **550 Permission denied** - The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

## What is the difference between a GET request and a POST request? When might each be used?

**GET** - Requests data from a specified resource
**POST** - Submits data to be processed to a specified resource

## What is a cookie? How does it relate to HTTP requests?

* An HTTP cookie (also called web cookie, Internet cookie, browser cookie or simply cookie) is a small piece of data sent from a website and stored in the user's web browser while the user is browsing.

* When you enter a Web site using cookies, you may be asked to fill out a form providing personal information; like your name, e-mail address, and interests. This information is packaged into a cookie and sent to your Web browser, which then stores the information for later use. The next time you go to the same Web site, your browser will send the cookie to the Web server. The message is sent back to the server each time the browser requests a page from the server.

