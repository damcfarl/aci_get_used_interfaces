# aci_get_used_interfaces
This is a demonstration ansible script
Uses the rest_aci module to gather the interfaces that have a policy group configured. This is somewhat an indication that an interface has been configured
Uses the read_csv to parse a list of leafs and leaf pairs to gather all of the data
Tested in a lab environment. 
Post process of the results via a simple sed/egrep shell script loop_to_csv.sh <result_output>
Demonstration purposes. Not intended for Production/Live environments
