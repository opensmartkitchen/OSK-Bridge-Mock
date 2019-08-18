// //////////////////////////////
// FILE: OskBridgeMain/main.swift
// //////////////////////////////
import OskGadgetCWrapMock

guard var oskGadget = oskGadgetCreate() else {
    fatalError()
}

print(oskGadgetGetScaleWeight(oskGadget))
