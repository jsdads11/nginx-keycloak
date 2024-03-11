function extractPayload (token) {
    const tokenParts = token.split('.');
    const encodedPayload = tokenParts[1];
    const decodedPayload = Buffer.from(encodedPayload, 'base64').toString('utf-8');
 
    return JSON.parse(decodedPayload);
 }
 
 
 function authorize(request) {
    const token = request.headersIn.Authorization;
 
    if (!token || !(token.slice(0, 7) === 'Bearer ')) {
        return false;
    }
 
    const payload = extractPayload(token);
    const roles = payload['roles'];
  
    // request url
    const url = request.uri;
 
 
    // here we can compare url and roles
    // to allow or deny access  
 
    return false;
 }
