
#!/ bin/ bash
{
echo " awk␣ input "
} | awk '
# missing condition = > always done
{ print "Hi␣ user .␣ This ␣is␣ what ␣you␣ gave ␣me:" }

# condition which is true and no action
# = > default print action
1 == 1

# another message which is always printed
{ print " Thank ␣you" }
'


# If the action block is missing the default action is executed, which is just printing the full
# record (i.e. line of text) to stdout
