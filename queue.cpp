#include <iostream>
#include <queue>
using namespace std;

void showq(queue <int> gq) {
    queue <int> g = gq;
    while (!g.empty()) {
        cout << '\t' << g.front();
        g.pop();
    }
    cout << '\n';
}

int main() {
    queue<int> gquiz;
    gquiz.push(10);
    gquiz.push(20);
    gquiz.push(30);

    cout << "The queue gquiz is : ";
    showq(gquiz);

    cout << "\ngquiz.size() : " << gquiz.size();
    cout << "\ngquiz.front() : " << gquiz.front();
    gquiz.pop();
//    gquiz.pop();
    cout << "\ngquiz.front1() : " << gquiz.front();
    cout << "\ngquiz.back() : " << gquiz.back();

    return 0;
}


