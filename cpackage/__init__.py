try: #Ignore errors, just dont run this file!
    from cpackage.packaging import CPack
    from cpackage.packaging import Cdir
    from cpackage.packaging import CAccess
    from cpackage.packaging import CRemove

except ImportError as importerror:
    print(importerror)

__all__ = ["CPack", "Cdir", "CAccess", "CRemove"]
