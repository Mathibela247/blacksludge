#set the default country or several default countries for parsing 
Phonelib.default_country = "ZA"
Phonelib.default_country = ['ZA', 'FR']

#To use the ability to parse special numbers (Short Codes, Emergency etc.)
Phonelib.parse_special = true

#To allow vanity phone numbers conversion
Phonelib.vanity_conversion = false

#To disable sanitizing of passed phone number (keeping digits only)
Phonelib.strict_check = false

#To disable country reset during parsing in case phone starts with + sign and country specified but country phone prefix doesn't match phone's prefix
Phonelib.ignore_plus = false

#To change sanitized symbols on parsed number, so non-specified symbols won't be wiped and will fail the parsing
Phonelib.sanitize_regex = '[\.\-\(\) \;\+]'

#To disable sanitizing of double prefix on passed phone number
Phonelib.strict_double_prefix_check = true
