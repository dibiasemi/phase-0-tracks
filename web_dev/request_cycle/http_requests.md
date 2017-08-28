What are some common HTTP status codes?
- 200 code is the most common and represents a successful response
- 404 code is the most common error code and means the requested resource is no longer available or just not found.
- 403 means access to the resource is forbidden
- 500 is a "catch-all" for server-side errors
- 504 indicates a gateway timeout

**Source: https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/

What is the difference between a GET request and a POST request? When might each be used?
HTTP POST requests supply additional data from the client (browser) to the server in the message body where as GET requests include all required data in the URL. The method that is specified determines how form data is submitted to the server. Because parameters remain in browswer history as they are part of the URL, GET should not be used when sending passwords or other sensitive information. In contrast, POST methods can/should be used when sending passwords/sensitive information.

**Source: http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An HTTP cookie - a small piece of data that a server sends to the user's web browswer. The browser may save it and send it back with the next request to the same server. Typically, it's used to tell whether two requests came from the same browser. Cookies are mainly used for three purposes; session management, personalization and tracking.

**Source: https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies