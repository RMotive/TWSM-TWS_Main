﻿using Foundation.Contracts.Exceptions.Interfaces;

namespace Foundation.Exceptions.Modelling.Failures;
public class XFModelGeneration
    : IGenericExceptionExposure {
    public Dictionary<string, object> Failure { get; set; } = [];
    public string Message { get; set; } = string.Empty;
}
