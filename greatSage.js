#!/usr/bin/env node

const path = require('path');
const fs = require('fs');
const { spawn } = require('child_process');

const isWindows = process.platform === 'win32';
const possiblePaths = [
    path.join(process.cwd(), '..'),
    path.join(__dirname, '..'),
    path.join(process.env.HOME || '', '.npm-global', 'lib', 'node_modules', 'seraphim-project'),
    path.join(process.cwd())
];

let projectDir = null;
for (const dir of possiblePaths) {
    const pkgPath = path.join(dir, 'package.json');
    const mainPath = path.join(dir, 'gate_of_truth', 'main.js');
    if (fs.existsSync(pkgPath) && fs.existsSync(mainPath)) {
        projectDir = dir;
        break;
    }
}

if (!projectDir) {
    console.error('Error: Could not find SERPHIM project directory');
    console.error('Please run from the project folder or re-run npm link');
    process.exit(1);
}

const scriptPath = path.join(projectDir, 'gate_of_truth', 'main.js');
const args = process.argv.slice(2);

const child = spawn('node', [scriptPath, ...args], {
    stdio: 'inherit',
    cwd: projectDir,
    shell: true,
    windowsHide: isWindows
});

child.on('exit', (code) => {
    process.exit(code || 0);
});

child.on('exit', (code) => {
    process.exit(code || 0);
});