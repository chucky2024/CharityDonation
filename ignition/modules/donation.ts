import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const CharityManagementModule = buildModule("CharityManagementModule", (m) => {

    const charity = m.contract("CharityManagement");

    return { charity };
});

export default CharityManagementModule;
// contract address = 0x74B0A525FfB07F4807A6AeFFf327E2E192d17f6E