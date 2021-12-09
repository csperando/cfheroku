# Lucee 5 and CFWheels on Heroku

[View template here](https://coldfusion.herokuapp.com/)

Clone or fork then Deploy!

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/csperando/cfheroku/tree/main)

# Local Testing

Command box is used for local testing, but it requires jre which is incompatible with github and heroku. Both should be placed within `webroot`. Make sure the `jre` directory and `box.exe` are ignored by including them within the `.gitignore` file.

# Layouts

The default `/view/controller/layout.cfm` does not appear to work as the default layout on Heroku. Instead the parent level `/view/layout.cfm` is used, and the controller specific layout is ignored. To fix this simply add the following code within the config function in the desired controller.cfc:

```coldfusion
function config() {
    usesLayout(name="layout", template="layout");
}
```
