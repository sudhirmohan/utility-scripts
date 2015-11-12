o off
 
:: Linux commands
doskey alias   = doskey $*
doskey cat     = type $*
doskey clear   = cls
doskey cp      = copy $*
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
doskey ls      = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey ~ = cd %path%
 
:: Easier navigation
doskey ..    = cd ..\$*
doskey ...   = cd ..\..\$*
doskey ....  = cd ..\..\..\$*
doskey ..... = cd ..\..\..\..\$*
 
:: Maven
:: Requires M2_HOME\bin to be added to the Path environment variable
:: -rf --resume-from <project>
doskey mci  = mvn clean install
doskey mec  = mvn eclipse:clean
doskey m2e  = mvn eclipse:eclipse -DdownloadSources -DdownloadJavadocs
doskey mcis = mvn clean install -Dmaven.test.skip
doskey mcp  = mvn clean package
doskey mcps = mvn clean prepare-package war:exploded -Dmaven.test.skip
doskey mct  = mvn clean test
doskey mvns = mvn clean install -Dmaven.test.skip=true
doskey mvndSkipTest = mvnDebug -P devint-test jetty:run -Dmaven.test.skip=true
doskey mvnd = mvnDebug -P devint-test jetty:run
doskey mss = mvn sonar:sonar
doskey mvnr = mvn -P devint-test jetty:run > mvn.txt
 
:: git alias
doskey g = git
doskey gc = git clone
doskey gb = git branch
doskey gch = git checkout
doskey grb = git rebase
doskey gbd = git branch -d
doskey ga = git add
doskey gcm = git commit -m
doskey gs = git status
doskey grh = git reset --hard
doskey gst = git stash
doskey gl = git log
doskey gsm = git squash --merge
doskey gpso = git push --origin
 
 
:: User specific doskeys
:: Add your own doskeys below
