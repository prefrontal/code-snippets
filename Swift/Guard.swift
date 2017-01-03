// -- Guard ------------------------------------------------------------------

guard let user = username else
{
    // username is nil, prompt for login.
    return
}



func checkAuthenticated(authenticated: Bool) -> Bool {
    guard authenticated else {
        // Do something in response to failure
        
        return false
    }
    
    return true
}
