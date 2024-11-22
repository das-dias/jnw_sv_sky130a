
A translinear circuit is a wonderful thing. It's not that common these days, so
allow me to do an explantion.

Consider the circuit below. The important transitors are XM1, XM2, XM3 and XM4.
Call the bias current in XM1 and XM2 $I_1$ and $I_2$ in XM3 and XM4.

The transistors are all biased in weak inversion, so the VGS of XM1 and XM2 will
be

$$ I_{D1} = I_0 e^{V_{GS1}/U_T} $$ 

where I_0 is a constant, and $U_T = \frac{kT}{q}$

The gate-source voltage will be 

$$V_{GS1} = U_T ln \frac{I_{D1}}{I_0}$$

Consider a small current difference into IIP and IIN, since the gate is shared,
the differential voltage on source will be 

$$\Delta V = V_{GS1} - V_{GS2} = U_T ln(I_{D1}) - U_T ln(I_{D2})$$

The bias current is the same in both XM1 and XM2, accordingly

$$ \Delta V = U_T ln \left(\frac{I_{1} + \Delta I}{I_1 - \Delta I}\right) $$

or

$$ \Delta V = U_T ln \left(\frac{1 + \Delta I/I_{1}}{1 - \Delta I/I_{1}}\right) $$


The $\Delta V$ is the differential voltage into the differential pair, and the output current would be 

$$I_{O} = I_0 e^{(V_{GS} + \Delta V)/U_T} - I_0 e^{(V_{GS} - \Delta V )/U_T} $$

$$I_{O} = I_0 e^{V_{GS}/U_T} e^{\Delta V/U_T} - I_0 e^{V_{GS}/U_T} e^{\Delta V/U_T} $$

The factor that depends on $V_{GS}$ in the expression will be just $I_2$, as such 

$$I_{O} = I_2\left(e^{\Delta V/U_T} - e^{-\Delta V/U_T}\right) $$

Inserting for $\Delta V$


$$I_{O} = I_2\left(\frac{1 + \Delta I/I_{1}}{1 - \Delta I/I_{1}} - \frac{1 - \Delta I/I_{1}}{1 + \Delta I/I_{1}}\right) $$




We know that the two transistors have the same bias current, as such, the 

$$I_{O} = I_0 e^{}
