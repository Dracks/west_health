module westhealth

import vweb
import dracks.west

[path: '/.well-known']
pub struct HealthController {
	vweb.Context
}

['/live']
fn (mut self HealthController) health() vweb.Result {
	return self.text('{status: UP}')
}

['/ready']
fn (mut self HealthController) ready() vweb.Result {
	return self.text('{status: UP}')
}

pub fn new_module() &west.WebModule {
	mut mod := &west.WebModule{}

	mod.register_controller[HealthController]()

	return mod
}
