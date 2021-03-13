# Elastic Scattering

Antiproton elastic scattering cross section using partial waves

... more explanation here...

## Download and compile

```bash
git clone https://github.com/pbarBrescia/elastic-scattering.git
cd elastic-scattering
./compile.sh
```

## Run
Input arguments are:
- Antiproton lab momentum (e.g. 50. MeV/c)
- Target mass in u.a.m. (e.g. 40.078 for Calcium)
- Target charge in e units (e.g. 20. for Calcium)

```bash
./run.sh 50.0 40.078 20.0
```

The printed result is organized in 5 columns: 
1. angle in degrees
2. angle in degrees again from previous code
3. dsigma/domega given by **coulomb** amplitudes
4. dsigma/domega given by **strong** amplitudes
5. dsigma/domega given by **coulomb+strong** amplitudes

Example:
```
ss
```
