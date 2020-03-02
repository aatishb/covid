#!/bin/bash
# run daily to update covid stats
mv curvefit.ipnyb curvefit.previous.ipnyb
jupyter nbconvert --to notebook --execute curvefit.ipynb
mv curvefit.nbconvert.ipynb curvefit.ipynb
git add *
git commit -m 'automatic update'
git push