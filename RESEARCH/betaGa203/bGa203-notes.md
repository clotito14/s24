# NOTES - BETA-GALLIUM-OXIDE POWER ELECTRONICS
Chase Lotito - SIUC Undergraduate - Spring 2024

## A. Questions
1. Differences between substrates and epitaxial wafers?
2. If the undoped substrate is insulating, and we can only dope to make an n-type, how do we get conduction?? Oxide is insulating?
3. What is dopant flux?
4. What is island coalescence?
5. What are modulation-doped FETS? (MODFETs)
6. How do you actually control the plane that you can grow a crystal? How can you determine the plane a crystal is on in general?
7. What are heterostructures, and are they good or bad?
8. What is trap characterization?
9. Why do high voltage devices require low doping concentrations?
10. What are Quasi-Fermi Levels, and how are they related to a device's bandgap?
11. What is a phonon?
12. What does ab initio mean?
13. Explaining what a two-dimensional electron gas (2DEG) is?
    13a. If 2DEG causes increased electron mobility. Is this related to the 2D quantum confinement, where the 2D density-of-states is constant and related to the effective mass of the electron?
14. How does anisotropy effect electrical properties? Is it exploitable?
15. Is it favorable to have a diode with the same forward and reverse I-V characteristics? 
16. What is the Reduded Surface Field Effect (RESURF)?
17. Using different doping techniques and RESURF, is it possible to doping layers around the inert films to reduce the E-field and then prevent premature breakdown?
18. What is delta doping?



## 0. IMPORTANT TERMINOLOGY
 
1. EPITAXY - a type of crystal growth or material deposition in which new crystalline layers are fomred with one or more well-defined orientations with respect to the crystalline seed layer. (homo for growth same as seed, hetero for growth different as seed).

2. HALIDE VAPOR PHASE EPITAXY (HVPE) - A non-organic chemical vapor deposition, characterized by high quality growth of epitaxial layers with fast growth rate. 

3. ATOMIC LAYER DEPOSITION (ALD) -

4. HIGH-ELECTRON-ELECTRON MOBILITY TRANSISTORS (HEMTs)

5. CRITICAL ELECTRIC FIELD (Ec) - The maximum electric field strength above which elctrons in a collisional plasma can be accelerated to become runaway electrons.

6. ULTRA WIDE BAND GAP (UWBG)

7. POWER FIGURE OF MERIT (PFOM)

8. BALIGA HIGH-FREQUENCY FIGURE OF MERIT - Predicts power losses for a power device will increase as the square root of operating frequency and is proportional to the output power. Power losses can be reduced using semiconductors with larger mobility and larger critical electric field for breakdown.

9. ON RESISTANCE (Ron) - The resistance between the source and drain of a MOSFET during operation. Ron leads to power losses in heat. Generally, the larger the chip size, the smaller the on resistance.

10. EDGE-DEFINED FILM-FED GROWTH (EFG)

11. CZOCHRALSKI METHOD (CZ)

12. MOLECULAR BEAM EPITAXY (MBE) - realized by the reaction of Ga vapor with reactive oxygen on the heated substrate in a high vacuum. 

13. METAL ORGANIC CHEMICAL VAPOR DEPOSITION (MOCVD)

14. VERTICAL BRIDGMAN METHOD (VB)

15. FLOATING ZONE METHOD (FZ)

16. MONOCLINIC CRYSTAL SYSTEM - The crystal is described by 3 vectors of unequal lengths, with 2 perpendicular.

17. TWO-DIMENSIONAL ELECTRON GAS (2DEG) - a layer or sheet of electrons that can only move in two-dimensions caused by the junction of two differing semiconductor materials. The special quantum confinement of 2DEG can reduce the effective mass of the electron. Less electron scattering compared to 3D confinement. 

18. SCHOTTKY BARRIER DIODE (SBD) - a diode created by the junction of a metal and a semiconductor, where there is a potential barrier formed from the difference of the two material's work functions.

19. UNIPOLAR LIMIT OF SEMICONDUCTOR - The idealized scenario when the carrier associated with charge transport in a semiconductor is either only electrons or only holes. (Unipolar Electron Conduction or Unipolar Hole Conduction)

20. TIME-DEPENDENT DIELECTRIC BREAKDOWN (TDDB) - Over time, the electric field wears down on a dielectric material. 

--I have notes for the previous sections I and II on paper--

## I. INTRODUCTION

## II. AN OUTLOOK TO THE COMMERCIAL MARKET OPPORTUNITIES OF $\beta -Ga_2 O_3$ BASED ON POWER DEVICES

## III. DEFENSE BASED POWER CONVERTER APPLICATIONS

## IV. ECONOMIC MODEL

What affects the economic model for B-Ga203 for power-devices?
    1. Price per unit current (wafer price and current density)

B-Ga203's Baliga FOM is higher than that of SiC and GaN.
* Due to B-Ga203 bulk growth.
* The on-resistance is expected to be reduced for transistors and diodes, THEREFORE, current density can be increased for the same voltage.

### 1. SUBSTRATES

CHALLENGE 1: LOSS OF PRECIOUS METAL CRUCIBLES IN EFG AND CZ.
* Iridium is used for crucible (low 02)
    * Small amounts of Ga react with Ir during casting (loss).
    * This is exacerbated for larger growths bc more Ga.
    * Higher temps also increase this reaction.
* VB method can control temps better and cause less of this reaction.
    * Lower temps (better concentrated).
    * High 02 levels, so use Pt-Rh alloy crucible.
    * Crucible still needs recasting.

CHALLENGE 2: INCREASE SUBSTRATES IN WAFER FABRICATION
* Thickness of substrate must be reduced.
* B-Ga203 can be cleaved on (100) and (001) planes
    * xz-plane and xy-plane.
* B-Ga203 has crystal structure of a monoclinic system with low symmetry, THEREFORE high accuracy is needed.

The commerically available crystallographic planes for B-Ga203 are (100) (010) and (001). 

CHALLENGE 3: SUBSTRATE WASTE THROUGH MATERIAL SCRAPING
* During Chemical Mechanical Polishing (CMP), it is necessary to remove a region thicker than the damaged layer generated in the previous step. WASTEFUL.

Intrinsic Material Properties
    1. Transport (isotropic)
    2. Thermal conductivity (anisotropic)
    3. Field strength (anisotropic)

### 2. EPITAXIAL WAFERS

## V. BULK GROWTH

Leibniz Institute for Crystal Growth research finds that the growth environment needs a high 02 atmosphere to increase crystal diameter.

### A. KEY CHALLENGES

> THE GOAL IS TO GET CRYSTALS OF AT LEAST 100MM IN DIAMETER.

The (100) and (001) planes are highly suseptible to mechanical stress, and this complicates fabrication and polishing.

CZ - undoped layers are shown to be insulating??
   - 91% C02 and 9% 02 sufficient for growth of (010) Fe-doped crystals that are 60mm in diameter.

CZ will be the preferred method because it is the standard, but that means there will need to be high control of the growth environment, and work arounds for the Iridium crucible deteriorating.

## VI. MOLECULAR BEAM EPITAXY (MBE)

### A. STATUS

This research field was started with the Higashiwaki MESFET:
1. Homoepitaxial, Sn-doped layer (tin) grown with MBE.
2. On top of a Fe-doped beta-Ga203 substrate.

> IMPORTANT: Because of beta-Ga203 bulk growth, we can have MBE do Homoepitaxial growth of functional layers. (WHY?)

MBE has a growth rate of a few nm/min. [for (100), (010), (001), (201)]

n-type is controlled with donor doping with Sn, Ge, Si to get electron concentrations of 10^20 per cubic cm.

### B. CURRENT AND FUTURE CHALLENGES

The monoclinic nature of the crystal poses structural defects.

There are limited alloy compositions (Al,Ga)203 and (In,Ga)203 because of band-offsets and electron confinement.

The growth rate is heavily impacted by temperature desorption volatile suboxide Ga20. (WHY?: it takes temperature to remove the Ga20?)

Fasted growth rate on (010) plane at 3nm/min. At 700 centigrade.

Higher growth rates can be made with introducing a catalyst vapor of In or Sn, causing a thermodynamically driven exchange of the Ga metal ion. Called Metal-Exchange Catalysis (MEXCAT or MOCATAXY).


### B-2. MBE: ELECTRICAL QUALITY DOPING, PURITY AND POINT DEFECTS

Sn-doping can be controlled but mobility is below the empirical mobility limit. (WHAT DOES THAT MEAN?)

Ge-doping has higher mobility but less control due to necessary growth conditions.

Si-doping is best but struggles to be made with MBE bc of source oxidation causing drift of Si Flux. (??)

What exactly is unintentional doping (UID)? (Related to Si0 and Si).
* I think during the doping process, unintentional Si comes from Si0 and the quartz cavity of the oxygen plasma source. 
* The electron concentration is lowest but has the highest Hall mobility 

To fix this? Ga polishing or intentionally doping Fe. (Fe is the deep acceptor?)

Thick UID buffer layers can help FET performance by reducing acceptor concentrations in the channel. (WHY?)

### B-3. EPITAXY: CRYSTALLINITY AND EXTENDED DEFECTS

The monoclinic structure can lead to defects:
* Twin formation (?) on (100) and (201)
    * Due to:
        * double positioning of Ga atmosphere
        * Island coalescence??

Island coalescence can trap electrons which is terrible for mobility.

THIS IS NOT A PROBLEM FOR (010) AND (001)

## VII. METALORGANIC VAPOR PHASE EPITAXY (MOVPE)

Good for lateral and vertical devices.

Rapid advances for B-Ga203 and B-(AlxGa1-x)203 in vertical power device applications. 

Growth rates for (010) up to 10um/hr (166.7 nm/min?)
* UID low as $`7.4e15 cm^{-3}`$
* 300K mobility = $`176 cm^2/{Vs}`$

Max mobility reported of 194 cm^2/Vs with $`n_e = 8 \times 15 cm^{-3}`$.

(100) problems with two-dimensional islands can be migitated with a 6 to 2 degree miscut toward [001]. 

This method allows for very low concentrations (<1e-15)

## VIII. OTHER GROWTH STUFF
    
MVPE grown B-Ga203 doped with Si in the (001) plane showed $`+100 cm^2/{Vs}`$ mobility with concentrations as low as $`1 \times 15 cm^{-3}`$.

Low Pressure Chemical Vapor Deposition (LPCVD).
 * This with MVPE are good for growing thick films, good for Schottky-Barrier diodes.

## IX: CHARACTERIZATION

Quasi-Fermi levels describe the non-equilibrium distribution of charge carriers in a device. 

Trap characterization?

Finding electrically-active defects with deep-level transient and optical spectroscopy (DLTS/DLOS) and admittance spectroscopy (AS).  

These techniques can give electronic information about defect type, so we can simulate the trap impacts on:
1. Leakage-CURRENT
2. Dynamic On-RESISTANCE
3. Threshold Voltage Instability
4. Linearity.

There exist several traps in all bandgaps, but the location and number of traps is completely dependent on the growth method.
* This is a problem since power devices need low-doping levels which exacerbate the issues caused by traps and defects.
* This also causes general problems with controlling the doping concentration.

Low concentrations of traps can cause dynamic on-resistance in transistors.
* bc Voltage switching causes the quasi-Fermi levels to move through the bandgap of the device.

There are modulations in trap occupancies. Since the Fermi Levels swing, there are trap emissions and also captures of charge carriers. So in a transient setting, the local charge densities change and so do the terminal characteristics of a device.

Ultimately, this just means the transistors are derated by device designers.

For medium concentrations, or temps that allow ionization, the defects can lead to leakage current or reduced mobility.

The Ec-0.8eV and Ec-0.7eV traps cause threshold voltage Instability.

Ec-2.0eV and Ec-4.4eV traps are carrier compensation centers. (WHAT?)

## X: FUNDAMENTAL MATERIALS AND TRANSPORT PROPERTIES

The ab initio computational technique was able to accurately predict room temp electron mobility.

Using heterostructures like AlGaO/Ga203 to make high 2DEG densities can increase electron mobility.


## XI: SCHOTTKY BARRIER DIODES

Vertical B-Ga203 schottky barrier diodes.
* High breakdown voltage ~= 3000V
* Baliga FOM $`1GW/cm^2`$.
* Fast switching
* Near identical forward and reverse IV characteristics (WHY GOOD?)

Reduced Surface Field Effect (WHAT?)
* reduces reverse leakage current

Reverse Edge Field Termination Techniques:
* Field plating
* Implanted terminations

Reducing power loss either by increasing device area or introducting Junction Barrier Schottky diode structures (JBS).
* Increasing chip area reduces on-resistance but increases device capacitance

## XII: VERTICAL DEVICES

Photodetectors (PDs) absorb photons and then sweep the resulting mobile charge carriers away using an external bias or a built-in potential caused by a junction.

M-S-M PDs made with B-Ga203 can absorb >90% of photons with energy greater than its bandgap.

The vertical $`\beta -Ga_2 O_3`$ shown are (limited scope as no p-type):
1. FinFETs
2. Static Induction Transistors (SITs)
3. Current Aperture Verticle FETs (CAVETs)

Drain Induced Barrier Lowering (DIBL) - When the drain voltage is high enough for a FET, the potential from the drain extends into the channel region, so the FET is slightly controlled by the drain voltage, meaning the gate voltage required to turn the device on is lowered.
* This can be non-ideal as it allows for sub-gate-threshold voltages to allow current to "leak".
* To prevent this from happening in a vertical finFET, the aspect ratio must be >2 for the fin channel.

There are 3 different FET gate structures of interest:
1. pn-junction based gates.
2. Metal-semiconductor (M-S) based gates.
3. Metal-Insulator-Semiconductor (MIS) based gates. 

We are shooting for $`V_{th} > 0`$:
* This is dependent on the built-in potential of the MIS and MS gate stack
    * Governed by the gate-metal work function.
        * It is difficult to achieve $`V_{th} > 1.5V`$
    * It would be easier to get higher threshold voltages with a pn-junction.
        * This requires a high-quality epitaxial heterojunction interface.

The use of MIS based gates is problematic as the dielectric will breakdown much sooner than the $`\beta -Ga_2 O_3`$, so there shows another need for a p-type to employ pn-junction based gates.

$`\beta -Ga_2 O_3`$ CAVETs cannot get beyond 600V due to the voltage-blocking capability of the semi-insulating current blocking layer. This is another implication of no p-type.

### P-N HETEROJUNCTIONS

The placement of a pn-junction capable of avalanche breakdown within the structure of a device:
* Possible minimization of electric-field crowding
* Implementation of RESURF
    * Using specific doping throughout the device to evenly distribute the electric-field, which prevents high E-field concentrations which can allow for higher breakdown voltages.
        * Possible strategies to evenly-distribute E-Field
            * Higher doping at Surface
            * Buried doped layers

### CONCLUDING REMARKS

Ideally, given an interface the displacement current is the same:
```math
\epsilon_1 E_1 = \epsilon_2 E_2
```
We ultimately want the semiconductor critical breakdown field $`E_c`$ to be smaller than the critical breakdown field of the dielectric material in the device.

```math
E_{c,semi} < E_{c,dielec}
```
This way the semiconductor material itself at high surges does not put the insulator at risk of failure, reducing TDDB and increasing device lifetime.

## XIII. LATERAL DEVICES

Lateral devices are ideal for switching applications:
* Power switching
* RF switching
* Switch-mode power amplifiers

Differences of lateral devices to vertical devices:
* Small capacitive footprint (connected to gate charge)
* Low on-resistance

The ulitmate goal -> Self-Aligned Gate-to-Source (SAG) $`\beta -Ga_2 O_3`$ transistors.
* Poised for fast-switching power converters.

Huang's Unipolar Material FOM:
* $`HMFOM = E_{max} \cdot \mu^{0.5}`$

Intrinsic Transconductance:
* $`g_m \approx v_{int} \cdot C_G/L_G`$

Extrinsic Transconductance ($`R_S`$ is the source access resistance):
* $`G_M = g_m \cdot ( 1 + R_S \cdot g_m ) - 1`$

> Device design is very sensitive to the gate-source distance $`L_{GS}`$.

So to improve performance either increase $`E_{max}`$ or $`\mu`$.
* Getting a high sheet charge density with a 2DEG
    * A $`(Al_x Ga_{1-x})_2 / Ga_2 O_3`$ with $`x=0.18`$ showed a 2DEG electron mobility $`\mu = 180 cm^2 / Vs`$.

## XIV. DIELECTRIC ENGINEERING


## $`\beta - Ga_2 O_3`$ Parameters
This holds different material parameters that are listed for $`\beta - Ga_2 O_3`$ in the paper.

* Critical Electric Field: $`E_C = 8 MV/cm`$
* Mobility @ 300K: $`\mu = 200 cm^2/Vs`$
* Richardson Constant (related to thermionic emission): $`A_G = 37 A/cm^2 K^2`$
* Tunneling Effective Mass: $`m^* = 0.31 m_o`$
* Relative Dielectric Constant: $`\kappa = \epsilon_r = 10`$
* Bandgap Energy: $`E_G = 4.8 eV`$
* 

## Doping $`\beta - Ga_2 O_3`$

Si Doping:
* $`n^- - Ga_2 O_3`$
* $`n = 5 \times 10^{-19} cm^{-3}`$
    * forms decent ohmic electrodes
<br>

N Doping:

* Deep Acceptor
* Nitrogen is closest to O for ionic size and electronic structure (1 e difference)
* Can be used to dope current blocking layers (CBLs)
    * Better annealing --> less leakage current compared to Mg
<br>

Sn Doping (tin):

* High electron donor concentrations
* $`n^+ - Ga_2 O_3`$ (this needs to be fact checked)

<br>

Fe Doping (iron):

