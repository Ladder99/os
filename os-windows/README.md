# Client setup for Lockheed

## Setup

Right click on init.bat and select Run as Administrator - say OK to the following dialog. This will add various environment variables to the registry. 

## Running Adapter

The Ladder99 Adapter reads data from the machine and sends changes as SHDR to the MTConnect Agent.

To run the Adapter in the console for testing, double click on run-adapter.bat.

To run the Agent in the console for testing, double click on run-agent.bat.

To run the Adapter as a Windows service, right click on start-adapter.bat and say Run as Administrator.

To stop it, do same for stop-adapter.bat.

## Checking Adapter

To check the Adapter output, see adapter.log and adapter-errors.log. 

## Checking Agent

The Agent has output at localhost:5000 - there are /probe, /current, and /sample endpoints. 

You can either visit that in the browser, or say `curl localhost:5000` to check the output. 

You can also check agent.log for log output.
