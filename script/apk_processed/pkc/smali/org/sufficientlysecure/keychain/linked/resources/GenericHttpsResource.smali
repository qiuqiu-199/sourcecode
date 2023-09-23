.class public Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;
.super Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
.source "GenericHttpsResource.java"


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 42
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;-><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;---><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            ")",
            "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "https"

    .line 73
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "generic"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;

    invoke-direct {v0, v2, v3, v4}, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;-><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createNew(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;
    .locals 5

    move-object/16 v2, p0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "generic"

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->createNew(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static generateText(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 46
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->generate([B)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v1, 0x7f110946

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    aput-object v4, v1, v0

    .line 48
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->generateText(Landroid/content/Context;[B)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 56
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->mSubUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v5, v4, p0, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 57
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->mSubUri:Ljava/net/URI;

    .line 58
    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "User-Agent"

    const-string p0, "OpenKeychain"

    .line 59
    invoke-virtual {v4, v5, p0}, Lokhttv6/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttv6/Request$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 61
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->getResponseBody(Lokhttp3/Request;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayComment(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 100
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->mSubUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayIcon()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0800fa

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->getDisplayIcon()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const v0, 0x7f110955

    .line 95
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerifiedText(Z)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    if-eqz v1, :cond_0

    const v1, 0x7f11095c

    goto :goto_0

    :cond_0
    const v1, 0x7f110959

    :goto_0
    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->getVerifiedText(Z)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->mSubUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->getViewIntent()Landroid/content/Intent;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isViewable()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;--->isViewable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
