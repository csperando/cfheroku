# Local Testing

Command box is used for local testing, but it requires jre which is incompatible with github and heroku. Both should be placed within `webroot`. Make sure the `jre` directory and `box.exe` are ignored by including them within the `.gitignore` file.

## Commandbox

Commandbox can be downloaded [here](https://www.ortussolutions.com/products/commandbox#download). Download the version with JRE, and then run `box.exe`. Once commandbox is up and running simply run `server start` from within the webroot of your local directory.

# Layouts

The default `/view/controller/layout.cfm` does not appear to work as the default layout on Heroku. Instead the parent level `/view/layout.cfm` is used, and the controller specific layout is ignored. To fix this simply add the following code within the config function in the desired controller.cfc:

```coldfusion
function config() {
    usesLayout(name="layout", template="layout");
}
```

## Issue

To my knowledge, the Lucee admin is currently not accessible one the Heroku site. You will only see the set password page,
but the directory to set a new password on the Heroku servers is not accessible. Lucee no longer allows you to set the initial password through the web. Instead a password.txt file must be imported from the `{lucee-server}` directory.
