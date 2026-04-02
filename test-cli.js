#!/usr/bin/env node

const { spawn } = require('child_process');
const path = require('path');

const cli = spawn('node', ['main.js'], {
    cwd: path.join(__dirname, 'gate_of_truth'),
    stdio: ['pipe', 'pipe', 'pipe']
});

let output = '';

cli.stdout.on('data', (data) => {
    const text = data.toString();
    output += text;
    console.log(text);
});

cli.stderr.on('data', (data) => {
    console.error('ERROR:', data.toString());
});

setTimeout(() => {
    cli.stdin.write('help\n');
}, 1000);

setTimeout(() => {
    cli.stdin.write('version\n');
}, 2000);

setTimeout(() => {
    cli.stdin.write('status\n');
}, 3000);

setTimeout(() => {
    cli.stdin.write('exit\n');
    setTimeout(() => cli.kill(), 500);
}, 4000);