
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

class Client:public ProtobufProcess<Client>{

public:

    UPID server;

    Client():ProcessBase("my_client"){
    }


    virtual void initialize()
    {
//     route("/vars", &MyProcess::vars);
        route("/vars","hello ", [=] (const Request& request) {
            string body = "... vars here ...";
            OK response;
            response.headers["Content-Type"] = "text/plain";
            std::ostringstream out;
            out << body.size();
            response.headers["Content-Length"] = out.str();
            response.body = body;
            return response;
        });

//     install("stop", &MyProcess::stop);
        install("stop", [=] (const UPID& from, const string& body) {
            terminate(self());
        });

        install<teacher>(&Client::report_from_server, &teacher::name);



//        cout<<"pinf"<<endl;

    }

    void report_from_server(const string& name){
        cout << "你的老师是：" << endl;
        cout << name << endl;
    }

    void send_server_a_message(){
        teacher k;
        string client_id = this->self();
        k.set_name(client_id);
        k.set_id(2);
        k.set_career("linux");
        send(server, k);
    }



};

int main(){

//    UPID masterUPID("my_master@10.211.55.4:37210");

    Client client;
    process:PID<Client> cur_client =  process::spawn(client);
    cout<<endl;
    cout<<"Running client on "<<process::address().ip<<":"<<process::address().port<<endl;
    cout<< "PID"<<endl;
    cout<<"please input the master UPID:"<<endl;
    string master_str;
    cin>>master_str;
    UPID masterUPID(master_str);
    client.server = masterUPID;
    client.send_server_a_message();

    process::wait(client.self());
//    const PID<Master> masterPid = master.self();
//    cout<<masterUPID<<endl;
//    Client client;
//    process:PID<Master> cur_master =masterUPID;
//    send(masterUPID, "ping");
//    PID pid()

//    PID<Master> masterUPID("my_master@10.211.55.4:33840");
//    process::dispatch(masterUPID,&Master::report,k.key());
//    process::dispatch(pid,&Master::report,k.key());
    return 0;
}
