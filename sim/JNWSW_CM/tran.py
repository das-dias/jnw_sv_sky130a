#!/usr/bin/env python3
import pandas as pd
import yaml
import cicsim as cs
import sys
import matplotlib.pyplot as plt

@cs.SimCalcRaw
def main(fname,df):
  yamlfile = fname + ".yaml"


  df.set_index("time",inplace=True)
  df.index = pd.to_datetime(df.index,unit='s')
  df["falling"] = df["v(clk)"].diff()
  dfo = df[df["falling"] < 0]

  dfa= dfo.resample(pd.Timedelta(1,unit="us")).first()
  dfa= dfa.tail(len(dfa.index)-2)

  dnl = dfa["i(vdac)"].diff()

  x = range(0,len(dnl.index))


  avg = dnl.mean()
  dnl = dnl - avg
  ymin = dfa["i(vdac)"].values[0]
  y =  avg*x + ymin
  inl = dfa["i(vdac)"] - y

  fig, ax = plt.subplots(2,1,figsize=(16,9),sharex=True)
  ax[0].plot(x,dnl*1e9)
  ax[0].set_title("%s: Average step size = %.2f nA"%(fname,avg*1e9))
  ax[0].set_ylabel("DNL [nA]")
  ax[1].plot(x,inl*1e9)
  ax[1].set_ylabel("INL [nA]")
  ax[1].set_xlabel("Code")

  plt.savefig(fname + ".png")

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  # Do something to parameters
  obj["step_avg"] = float(avg)
  obj["dnl_min"] = float(dnl.min())
  obj["dnl_max"] = float(dnl.max())
  obj["inl_min"] = float(inl.min())
  obj["inl_max"] = float(inl.max())
  # Save new yaml file
  with open(yamlfile,"w") as fo:
    yaml.dump(obj,fo)


if __name__ == '__main__':
  main(sys.argv[1])
