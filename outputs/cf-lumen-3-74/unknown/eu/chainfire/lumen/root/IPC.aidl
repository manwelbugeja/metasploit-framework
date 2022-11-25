package eu.chainfire.lumen.root;

import eu.chainfire.lumen.drivers.ControlSetting;

interface IPC {
    void update(byte driverMode, in ControlSetting setting);
    void terminate();
}
