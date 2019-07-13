const fs = require('fs')
const pretty = require('pretty')
const glob = require('glob-fs')({ gitignore: false })

for (const fname of glob.readdirSync('public/**/*.html')) {
    process.stdout.write(`File: ${fname} .`)
    const html = fs.readFileSync(fname, { encoding: 'utf8' })
    process.stdout.write('.')
    fs.writeFileSync(fname, pretty(html, { ocd: true }), { encoding: 'utf8' })
    process.stdout.write('.')
    console.log(' Done!')
}
