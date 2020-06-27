var Bosses = [
    {
        name: "launch_octopus",
        ram: 0x7e1f88,
        on: "images/launch_octopus_on.png",
        off: "images/launch_octopus_off.png",
    },
    {
        name: "sting_chameleon",
        ram: 0x7e1f8a,
        on: "images/sting_chameleon_on.png",
        off: "images/sting_chameleon_off.png",
    },
    {
        name: "armored_armadillo",
        ram: 0x7e1f8c,
        on: "images/armored_armadillo_on.png",
        off: "images/armored_armadillo_off.png",
    },
    {
        name: "flame_mammoth",
        ram: 0x7e1f8e,
        on: "images/flame_mammoth_on.png",
        off: "images/flame_mammoth_off.png",
    },
    {
        name: "storm_eagle",
        ram: 0x7e1f90,
        on: "images/storm_eagle_on.png",
        off: "images/storm_eagle_off.png",
    },
    {
        name: "spark_mandrill",
        ram: 0x7e1f92,
        on: "images/spark_mandrill_on.png",
        off: "images/spark_mandrill_off.png",
    },
    {
        name: "boomer_kuwanger",
        ram: 0x7e1f94,
        on: "images/boomer_kuwanger_on.png",
        off: "images/boomer_kuwanger_off.png",
    },
    {
        name: "chill_penguin",
        ram: 0x7e1f96,
        on: "images/chill_penguin_on.png",
        off: "images/chill_penguin_off.png"
    },
];

var HeartTanks = [
    {
        name: "heart_launch_octopus",
        bit: 7
    },
    {
        name: "heart_sting_chameleon",
        bit: 3
    },
    {
        name: "heart_armored_armadillo",
        bit: 1
    },
    {
        name: "heart_flame_mammoth",
        bit: 4
    },
    {
        name: "heart_storm_eagle",
        bit: 2
    },
    {
        name: "heart_spark_mandrill",
        bit: 6
    },
    {
        name: "heart_boomer_kuwanger",
        bit: 5
    },
    {
        name: "heart_chill_penguin",
        bit: 0
    }
];

var Upgrades = [
    {
        name: "x_body_head",
        bit: 0
    },
    {
        name: "x_body_buster",
        bit: 1
    },
    {
        name: "x_body_body",
        bit: 2
    },
    {
        name: "x_body_leg",
        bit: 3
    }
];

var ETanks = [
    {
        name: "etank_storm_eagle",
        bit: 4
    },
    {
        name: "etank_armored_armadillo",
        bit: 5
    },
    {
        name: "etank_spark_mandrill",
        bit: 6
    },
    {
        name: "etank_flame_mammoth",
        bit: 7
    }
];

var SigmaStage = [
    {
        name: "sigma_stage1",
        value: 0x01,
        on: "images/sigma_stage1_on.png",
        off: "images/sigma_stage1_off.png"
    },
    {
        name: "sigma_stage2",
        value: 0x02,
        on: "images/sigma_stage2_on.png",
        off: "images/sigma_stage2_off.png"
    },
    {
        name: "sigma_stage3",
        value: 0x03,
        on: "images/sigma_stage3_on.png",
        off: "images/sigma_stage3_off.png"
    },
    {
        name: "sigma_stage4",
        value: 0x04,
        on: "images/sigma_stage4_on.png",
        off: "images/sigma_stage4_off.png"
    },
];

function isBitSet(value, bit) {
    return (value & (1 << bit)) != 0;
}

function init() {
    memory.addNewCacheRange("all", 0x7e1f00, 0xFF);
}

function refreshData() {
    memory.refreshCache("all");
}

function getBossStatus() {
    var bossStatus = {};

    for (var entry of Bosses) {
        var readValue = memory.readUnsignedByte(entry.ram);

        if (isBitSet(readValue, 6)) {
            bossStatus[entry.name] = entry.on;
        } else {
            bossStatus[entry.name] = entry.off;
        }
    }

    return bossStatus;
}

function getHeartStatus() {
    var heartStatus = {};
    var readValue = memory.readUnsignedByte(0x7e1f9c);

    for (var entry of HeartTanks) {
        heartStatus[entry.name] = isBitSet(readValue, entry.bit) ? "images/heart_on.png" : "images/heart_off.png";
    }

    return heartStatus;
}

function getUpgradeStatus() {
    var upgradeStatus = {};
    var readValue = memory.readUnsignedByte(0x7e1f99);

    for (var entry of Upgrades) {
        upgradeStatus[entry.name] = isBitSet(readValue, entry.bit);
    }

    return upgradeStatus;
}

function getEtankStatus() {
    var etankStatus = {};
    var readValue = memory.readUnsignedByte(0x7e1f99);

    for (var entry of ETanks) {
        etankStatus[entry.name] = isBitSet(readValue, entry.bit) ? "images/etank_on.png" : "images/etank_off.png";
    }

    return etankStatus;
}

function getSigmaStageStatus() {
    var sigmaStatus = {};

    var readValue = memory.readUnsignedByte(0x7e1f7b);

    for (var entry of SigmaStage) {

        if (entry.value <= readValue) {
            sigmaStatus[entry.name] = entry.on;
        } else {
            sigmaStatus[entry.name] = entry.off;
        }
    }

    return sigmaStatus;
}

function getHadokenStatus() {
    return isBitSet(memory.readUnsignedByte(0x7e1f7e), 7);
}