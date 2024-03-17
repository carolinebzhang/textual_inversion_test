from PIL import Image
import os 

import shutil
def catch_image(filepath):
    try: 
        Image.open(filepath)
    except Exception as e:
        try: 
            shutil.move(filepath, "./faulty/")
        except Exception as f:
            print(f)
        return False
    return True
