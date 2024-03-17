from PIL import Image
import os 

import shutil
def catch_image(filepath):
    try: 
        filepath = "./distinct_angles/distinct_angles/" + filepath
        Image.open(filepath)
    except Exception as e:
        try: 
            shutil.move(filepath, "./faulty/")
        except Exception as f:
            print(f)
        return False
    return True
