def fetchUsername(text):
    var = text
    return var.split("|")[0].split(":")[1].strip()


def fetchPassword(text):
    var = text
    return var.split("|")[1].split(":")[1].replace(")", "").strip()
#
