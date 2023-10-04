# West Health module
A west module to get the health endpoint out of the box

## Usage

You only need to import the module created by health_module() as a web_module into a west.WebModule, see the following example:

```vlang
import dracks.westhealth

fn main() {
	mut app_module := west.WebModule{}

	app_module.import_web_module(mut westhealth.health_module())

	app_module.init()!

	web_app := west.create_server(app_module)
	web_app.run(8020)
}
```