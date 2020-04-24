// https://codeforces.com/problemset/problem/1157/B
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    string a = readln.chomp;

    int[] f = [-1];
    f ~= readln.split.map!(to!int).array;

    bool change = true;
    foreach(ch; a) {
        int digit = ch-'0';
        if(f[digit] < digit)
            change = false;
        if(f[digit] > digit && change)
            f[digit].write;
        else
            digit.write;
    } writeln;
}

