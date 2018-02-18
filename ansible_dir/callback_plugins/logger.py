import datetime
import time
from datetime import timedelta, datetime

class CallbackModule(object):
    """
    An ansible callback module for saving Ansible output to a database log
    """
    def __init__(self):
        # For storing timings
        self.start_time = time.time()
        

    def playbook_on_stats(self, stats): 
        delta = time.time() - self.start_time  
        #print "Playbook run took %s seconds\n\n" % timedelta(seconds=delta)
        print "Playbook run took %s \n\n" % time.strftime("%M mn %S s",time.gmtime(delta))
