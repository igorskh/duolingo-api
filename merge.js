const swaggerMerger = require('swagger-merger')
const path = require('path')
const fs = require('fs')

const findFiles = (startPath, filter, callback) => {
    if (!fs.existsSync(startPath)) {
        console.error("Directory not found", startPath);
        return;
    }

    var files = fs.readdirSync(startPath);
    for (var i = 0; i < files.length; i++) {
        var filename = path.join(startPath, files[i]);
        if (filter.test(filename)) {
            callback(filename);
        };
    };
}

const startPath = "./"
const filter = /^swagger-[A-z]+.yaml$/

findFiles(startPath, filter, (filename) => {
    console.log(filename);
    const completeFileName = `complete-${filename}`
    swaggerMerger.mergerYAML({
        dir: startPath,
        input: filename,
        output: completeFileName,
        compact: false
    })
});
