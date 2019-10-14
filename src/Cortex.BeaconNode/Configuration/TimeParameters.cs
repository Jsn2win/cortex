﻿using Cortex.Containers;

namespace Cortex.BeaconNode.Configuration
{
    public class TimeParameters
    {
        public readonly ulong SecondsPerDay = 86400;

        public Slot SlotsPerEpoch { get; set; }
    }
}