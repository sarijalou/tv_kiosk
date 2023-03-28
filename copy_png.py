import shutil

def copy_file_png(input_dialog):
    input_dialog =input_dialog[7:] # remove file://
    last_count=input_dialog.rfind('/')  # find last '/' charecter       
    target='.img'+input_dialog[last_count:] 
    shutil.copyfile(input_dialog, target)   #copy file
    return target #return for database save 