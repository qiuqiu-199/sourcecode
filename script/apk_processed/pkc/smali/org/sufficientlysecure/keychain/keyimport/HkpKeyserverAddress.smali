.class public abstract Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.super Ljava/lang/Object;
.source "HkpKeyserverAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field private static final PORT_DEFAULT:S = 0x2c6bs

.field private static final PORT_DEFAULT_HKPS:S = 0x1bbs


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 5

    move-object/16 v2, p0

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;--->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createWithOnionProxy(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 41
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;--->createWithOnionProxy(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 63
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    .line 67
    new-instance v11, Ljava/net/URISyntaxException;

    const-string v0, ""

    const-string v1, "scheme null!"

    invoke-direct {v11, v0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    :cond_0
    const-string v1, "http"

    .line 69
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hkp"

    .line 70
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hkps"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "unsupported scheme!"

    invoke-direct {v0, v11, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const-string v2, "hkps"

    .line 76
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    const-string v11, "https"

    if-ne v1, v3, :cond_3

    const/16 v1, 0x1bb

    goto :goto_0

    :cond_2
    const-string v2, "hkp"

    .line 79
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v11, "http"

    if-ne v1, v3, :cond_3

    const/16 v1, 0x2c6b

    :cond_3
    :goto_0
    move-object v3, v11

    move v6, v1

    .line 84
    new-instance v11, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;--->getURI(Ljava/lang/String;)Ljava/net/URI;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getOnion()Ljava/lang/String;
.end method

.method public getOnionURI()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 54
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;--->getOnionURI()Ljava/net/URI;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public getUrlURI()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 50
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;--->getUrlURI()Ljava/net/URI;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
