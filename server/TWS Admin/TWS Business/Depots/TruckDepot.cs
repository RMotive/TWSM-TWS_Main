﻿
using CSM_Foundation.Source.Bases;

using TWS_Business.Sets;

namespace TWS_Business.Depots;
/// <summary>
///     Implements a <see cref="BSourceDepot{TMigrationSource, TMigrationSet}"/>
///     representing a depot to handle <see cref="Truck"/> datasource entity mirror.
/// </summary>
public class TruckDepot : BSourceDepot<TWSBusinessSource, Truck> {
    /// <summary>
    ///     Generates a new depot handler for <see cref="Truck"/>.
    /// </summary>
    public TruckDepot()
        : base(new(), null) {
    }
}
