import matplotlib.pyplot as plt
import numpy as np
import sys

data = np.loadtxt(sys.argv[1])

plt.title('plab {} MeV/c'.format((sys.argv[2]).rjust(5)), fontsize=16)
plt.plot(data[:,0], data[:,2], '-', color='mediumpurple', label='strong', lw=2)
plt.plot(data[:,0], data[:,3], '-', color='seagreen', label='Coulomb', lw=2)
plt.plot(data[:,0], data[:,4], '-', color='black', label='strong+Coulomb', lw=2)
plt.xlabel('theta [degree]')
plt.ylabel('amplitude')
plt.yscale('log')
plt.legend(frameon=False, fontsize=12)
# plt.show()
plt.gcf().savefig('mom{}.png'.format(sys.argv[2]))
