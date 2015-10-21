extern void __VERIFIER_error() __attribute__ ((__noreturn__));
/* Example from "Static Analysis of the Accuracy in Control Systems: 
   Principles and Experiments" by Goubault Putot, Baufreton, Gassino,
   published in FMICS 07.

   The code implements a square root computation. It uses a Householder 
   method with cubic convergence to compute 1 / sqrt(Input), and then
   takes the inverse.

   Square root of some constants.
 */

double __VERIFIER_nondet_double();
void __VERIFIER_assume(int expression) { if (!expression) { LOOP: goto LOOP; }; return; }
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: __VERIFIER_error(); } return; }

double _EPS = 1e-6;

double SqrtR(double Input)
{
  double xn, xnp1, residu, lsup, linf;
  int i, cond;
  if (Input <= 1.0) xn = 1.0; else xn = 1.0/Input;
  xnp1 = xn;
  residu = 2.0*_EPS*(xn+xnp1);
  lsup = _EPS * (xn+xnp1);
  linf = -lsup;
  cond = ((residu > lsup) || (residu < linf));
  i = 0;
  while (cond) {
    xnp1 = xn * (15. + Input*xn*xn*(-10. + 3.*Input*xn*xn)) / 8.;
    residu = 2.0*(xnp1-xn);
    xn = xnp1;
    lsup = _EPS * (xn+xnp1);
    linf = -lsup;
    cond = ((residu > lsup) || (residu < linf)); 
    i++; 
  }
  return 1.0 / xnp1; 
}

int main()
{
  double d, r;

  for (d = 1.; d <= 20.; d++) {

    r = SqrtR(d);

    __VERIFIER_assert(r >= 1.0 && r <= 5.0);
  }
  return 0;
}
