import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "X",
    id: "X-54bb009e-9831-4a67-aaec-f8f41e8fb9ab"
}
service / on new http:Listener(9090) {

    @display {
        label: "Y",
        id: "Y-3d6d4a2d-ce81-4380-b533-d395dd8d3479"
    }
    http:Client yClient;

    function init() returns error? {
        self.yClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
