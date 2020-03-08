# Tracking the Growth of COVID-19 Cases

The purpose of this notebook is to infer the rate at which confirmed cases of COVID-19 are growing (or were growing) in various countries.

The notebook pulls data from the John Hopkins Data Repository of global Coronavirus COVID-19 cases, and then does the following things:

- List total number of confirmed cases (in countries with at least 100 cases)
- Attempt to fit the time series of confirmed cases in these countries to both an exponential and a logistic function
- Use these curve fits to infer doubling times (i.e., time for the number of confirmed cases to double)
- If the curve fit was successful, summarize doubling times for each country

We then repeat the following steps for the US:

- List total number of confirmed cases by US state & list US locations with the most cases
- Attempt to fit the time series of confirmed US cases to both an exponential and a logistic function
- Use these curve fits to infer doubling times (i.e., time for the number of confirmed cases to double)
- If the curve fit was successful, summarize doubling times for each US state with at least 50 cases

The main conclusion is that the doubling time of confirmed cases for countries with many cases is generally on the order of 2 days.

The notebook is updated every evening Eastern Time.

## Important Caveats:

- This analysis uses data on the confirmed cases as reported by countries, which is lower than the actual number of cases in each country.
- Confirmed cases and actual cases in the population grow at different rates. For example, if a country suddenly ramps up testing, then the number of confirmed cases will rapidly rise, but the actual cases may not be rising as fast. So the doubling time for confirmed cases is not the same as the doubling time for actual cases.
- Since we're using the entire timeline to infer the doubling times, these are not the current or most recent doubling times. Instead, for countries where the growth is exponential, the inferred doubling time is indicative of the overall rate of growth.
- For countries where the growth is no longer exponential and the number of cases is stabilizing (such as Mainland China), we fit the growth curve to a logistic function. Here, the inferred doubling time represents the growth encountered during the initial exponential stage of the epidemic (i.e., in the past).

