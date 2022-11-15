import fs from 'fs'

const { INPUT_IMG } = process.env

const inputFilePath = `/root/io/${INPUT_IMG}`
const configContents = fs.readFileSync('/root/faviconDescription.json').toString()
const configContentsParsed = JSON.parse(configContents)

const configOutput = Object.assign({}, {
	'masterPicture': `${inputFilePath}`
}, configContentsParsed)

fs.writeFileSync('/root/faviconDescriptionExtended.json', JSON.stringify(configOutput))
