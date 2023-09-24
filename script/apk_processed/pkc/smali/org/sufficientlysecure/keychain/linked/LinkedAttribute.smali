.class public Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;
.super Lorg/sufficientlysecure/keychain/linked/UriAttribute;
.source "LinkedAttribute.java"


# instance fields
.field public final mResource:Lorg/sufficientlysecure/keychain/linked/LinkedResource;


# direct methods
.method protected constructor <init>(Ljava/net/URI;Lorg/sufficientlysecure/keychain/linked/LinkedResource;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 30
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;-><init>(Ljava/net/URI;)V

    if-nez v2, :cond_0

    .line 32
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "resource must not be null in a LinkedIdentity!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 34
    :cond_0
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->mResource:Lorg/sufficientlysecure/keychain/linked/LinkedResource;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;---><init>(Ljava/net/URI;Lorg/sufficientlysecure/keychain/linked/LinkedResource;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDisplayComment(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->mResource:Lorg/sufficientlysecure/keychain/linked/LinkedResource;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/linked/LinkedResource;->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;--->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayIcon()I
    .locals 4

    move-object/16 v1, p0

    .line 38
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->mResource:Lorg/sufficientlysecure/keychain/linked/LinkedResource;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/linked/LinkedResource;->getDisplayIcon()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;--->getDisplayIcon()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 42
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->mResource:Lorg/sufficientlysecure/keychain/linked/LinkedResource;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/linked/LinkedResource;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;--->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
