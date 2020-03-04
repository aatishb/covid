#!/bin/bash
# run daily to update covid stats

jupyter nbconvert --to notebook --execute curvefit.ipynb

mv curvefit.ipynb curvefit.previous.ipynb
mv curvefit.nbconvert.ipynb curvefit.ipynb

git add *
git commit -m 'automatic update'
git push