.class public Lcom/textuality/keybase/lib/KeybaseException;
.super Ljava/lang/Exception;
.source "KeybaseException.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;
    .locals 2

    .line 33
    new-instance v0, Lcom/textuality/keybase/lib/KeybaseException;

    const-string v1, "JSON error in Keybase query"

    invoke-direct {v0, p0, v1}, Lcom/textuality/keybase/lib/KeybaseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static networkScrewup(Ljava/lang/Exception;)Lcom/textuality/keybase/lib/KeybaseException;
    .locals 2

    .line 39
    new-instance v0, Lcom/textuality/keybase/lib/KeybaseException;

    const-string v1, "Network error attempting Keybase query"

    invoke-direct {v0, p0, v1}, Lcom/textuality/keybase/lib/KeybaseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static networkScrewup(Ljava/lang/String;)Lcom/textuality/keybase/lib/KeybaseException;
    .locals 1

    .line 36
    new-instance v0, Lcom/textuality/keybase/lib/KeybaseException;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/KeybaseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static queryScrewup(Ljava/lang/String;)Lcom/textuality/keybase/lib/KeybaseException;
    .locals 1

    .line 42
    new-instance v0, Lcom/textuality/keybase/lib/KeybaseException;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/KeybaseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
