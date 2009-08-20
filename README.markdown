hData VistA
=============

This is a Ruby on Rails application that provides an [hData](http://www.projecthdata.org/) RESTful interface to 
[OpenVista](http://medsphere.org/community/project/openvista-server), an electronic health record system based on [VA VistA](http://vistapedia.net/index.php?title=What_is_VistA_Really).
At the moment, this project provides read only access to the information. This project is a proof of concept effort that shows hData can be used to expose information in legacy Health IT systems.
A team with experience in VistA and MUMPS would probably be able to implement this in a much cleaner and more rapid fashion.

This project uses the [VistA Adapter](http://github.com/projecthdata/vista-adapter) to pull information from OpenVista, and is therefore dependent on [JRuby](http://www.jruby.org/).

Configuring
-----------

Change the config/vista.yml file to point to your VistA installation

License
-------

Copyright 2009 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.