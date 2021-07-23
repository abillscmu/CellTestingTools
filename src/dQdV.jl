function generatedQdV(cellTestingDataFrame)
    Q = cellTestingDataFrame.capacity
    V = cellTestingDataFrame.terminalVoltage
    #Filter Q and V by applying a spline
    spl = Spline1D(Q,V)
    Q_splined = Q
    V_splined = spl(Q_splined)
    dQ = diff(Q_splined)
    dV = diff(V_splined)
    dQdV = hcat(dQ,dV)
    return dQdV
end