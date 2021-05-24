const fs = require("fs");
const loader = require("@assemblyscript/loader");
const ConsoleImports = require('as-console/imports')
const Console = new ConsoleImports()
const imports = {
    ...Console.wasmImports
};
const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/untouched.wasm"), imports);
Console.wasmExports = wasmModule.exports
module.exports = wasmModule.exports;
wasmModule.exports.test()