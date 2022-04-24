// How to work with a compiled rasm module

const fs = require("fs");
const { getResult } = require("./rasm");
// We expect an `a.wasm` file
const bytes = fs.readFileSync("./a.wasm");
const rasm = require("./rasm");

rasm.instantiate(bytes).then((obj) => {
  for (const funcname in obj.funcs) {
    const func = obj.funcs[funcname];

    const params = Array(func.numargs)
      .fill(0)
      .map((_, __) => Math.floor(Math.random() * 10));

    const return_val = func(...params);
    
    console.log(
      `-----------------\n${funcname} called with [ ${params} ] returned: ${return_val}`
    );
  }

  for (const valname in obj.vals) {
    const val = obj.funcs[valname];

    console.log(`-----------------\nExported ${valname} with Value ${val}`);
  }
});

// obj.funcs will contain all the exported functions
// obj.vals will contain any exported global variables/constants
