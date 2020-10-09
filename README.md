# progress-unit-testing
Demo repository for Progress unit testing trainings

## To test if ABLUnit framework is working on your environment you can use our sample repository which already have everything configured. To try it out perform following steps:

1. Clone the repository:
```bash
git clone https://github.com/justas-eko/progress-unit-testing.git
```
2. Setup
  * **On windows:**  
  Change **DLC** variable value to your Progress home directory in **progress-unit-testing/ablunitRunWin/propath.ini**  
  Depending on your environment setup, you might need to change prowin path in **progress-unit-testing/ablunitRunWin/launch_unit.bat**  
  Run script **progress-unit-testing/ablunitRunWin/launch_unit.bat**
  * **On Unix:**  
  Run script **progress-unit-testing/ablunitRunWin/launch_unit.sh**  
3. If everything went well you will see:
```bash
$ ./launch_unit.sh
Starting tests...
Finished! Check 'results.xml'
If there we errors:
```
```bash
$ ./launch_unit.shStarting tests...
   Seems there are failing tests...
Finished! Check 'results.xml'
```
---
Also, **progress-unit-testing/results.xml** will be generated that will show the outcome of each test.  
There's one drawback with this approach: XML isn't formatted right.  
To resolve any problems that might rise you can read **progress-unit-testing/ablunitRunWin/ablunit.log** or **progress-unit-testing/ablunitRunUnix/ablunit.log** to debug possible problems.
