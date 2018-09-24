#!/bin/bash

zip -r Language.zip *.xml -x english* -x *_mars_mission.xml -x *_tutorial.xml
zip -r LanguageMarsMission.zip *_mars_mission.xml -x english*
zip -r LanguageTutorial.zip *_tutorial.xml -x english*
