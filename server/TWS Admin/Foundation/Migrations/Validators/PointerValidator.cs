﻿using System.Reflection;

using Foundation.Migrations.Exceptions;
using Foundation.Migrations.Interfaces;

namespace Foundation.Migrations.Validators;
/// <summary>
/// 
/// </summary>
public class PointerValidator
    : IValidator {
    /// <summary>
    /// 
    /// </summary>
    /// <param name="Type"></param>
    /// <returns></returns>
    /// <exception cref="NotImplementedException"></exception>
    public bool Satisfy(Type Type) {
        if (Type != typeof(int)) return false;

        return true;
    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="Property"></param>
    /// <param name="Value"></param>
    /// <exception cref="XIValidator_Evaluate"></exception>
    public void Evaluate(PropertyInfo Property, object? Value) {
        string message;
        int code;
        if (Property.Name != "Id") {
            message = "Pointer cannot be named different than 'Id'";
            code = 1;
        } else if (Value is not int value) {
            message = "Pointer must be integer indexer and not null";
            code = 2;
        } else if (value <= 0) {
            message = "Pointer cannot be less or equal zero";
            code = 3;
        } else return;

        throw new XIValidator_Evaluate(this, Property, code, message);
    }
}