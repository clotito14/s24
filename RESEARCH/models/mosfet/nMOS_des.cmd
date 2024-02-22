File {
  *input files:
  Grid = "nMOS_dvs_msh.tdr"
  Doping = "nMOS_dvs_msh.tdr"
  Parameter = "models.par"

  *output files:
  Plot = "nMOS_dvs_msh.tdr"
  Current = "nMOS_des.plt"
  Output = "nMOS_des.log" 
}

Electrode {
  {name = "Drain" voltage = 0.0}
  {name = "Source" voltage = 0.0}
  {name = "Gate" voltage = 3.0}
  {name = "Substrate" voltage = 0.0}
}

Physics {
  Mobility(DopingDep HighFieldsat Enormal)
  EffectiveIntrinsicDensity(Bandgapnarrowing (OldSlotboom))
}

Plot {
  eDensity hDensity eCurrent hCurrent
  Potential SpaceCharge ElectricField
  eMobility hMobility eVelocity hVelocity
  Doping DonorConcentration
  AcceptorConcentration
}

Math {
  Extrapolate
  Derivatives
}

solve {
  Poisson
  coupled {poisson electron hole}
  Quasistationary(
    InitialStep = 2.0e-3
    MinStep = 2.0e-5
    MaxStep = 2.0e-1
    goal{name = "Drain" voltage = 2.0}
  )

  {
    coupled{poisson electron hole}
  }

}
