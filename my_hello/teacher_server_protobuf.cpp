#include <iostream>
#include <sstream>

#include <process/defer.hpp>
#include <process/dispatch.hpp>
#include <process/future.hpp>
#include <process/http.hpp>
#include <process/process.hpp>
#include <process/protobuf.hpp>

#include <teacher.pb.h>
#include "Offer.pb.h"

using namespace process;

using namespace process::http;

using std::cerr;
using std::cout;
using std::endl;

using std::chrono::seconds;

using process::Future;
using process::Promise;

using process::http::Request;
using process::http::OK;
using process::http::InternalServerError;

using std::string;
using namespace std;

class Master : public ProtobufProcess<Master> {

public:
    Master() : ProcessBase("my_master") {
    }


    virtual void initialize() {
        route(
                "/add",
                "Adds the two query arguments",
                [](Request request) {
                    int a = 3;
                    int b = 4;
                    std::ostringstream result;
                    result << "{ \"result\": " << a + b << "}";
                    JSON::Value body = JSON::parse(result.str()).get();
                    return OK(body);
                });

        install("stop", [=](const UPID &from, const string &body) {
            terminate(self());
        });

        install<teacher>(&Master::report_from_client, &teacher::name);
    }

    void report_from_client(const string &name) {

//        Offer server_offer;
//        server_offer.set_key("李乐乐");
//        server_offer.set_value("server_value");
//        server_offer.set_lele_label("server_label");
//        send(clientUPID, server_offer);

        cout << "你的学生是：" << endl;
        cout << name << endl;
        UPID clientUPID(name);

        teacher msg;
        msg.set_name("lele");
        msg.set_id(1);
        msg.set_age(24);
        msg.set_career("I am a teacher");
        send(clientUPID, msg);
    }

};

int main() {
    teacher k;
    k.set_name("company");
    k.set_career("leoox");

    process::initialize("master");
    Master master;
    process:
    PID<Master> cur_master = process::spawn(master);
    cout << "Running server on " << process::address().ip << ":" << process::address().port << endl;
    cout << "PID" << endl;

    const PID<Master> masterPid = master.self();
    cout << masterPid << endl;
    process::wait(master.self());
    return 0;
}