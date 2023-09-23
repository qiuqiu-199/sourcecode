.class public abstract Lorg/sufficientlysecure/keychain/linked/LinkedResource;
.super Ljava/lang/Object;
.source "LinkedResource.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/linked/LinkedResource;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getDisplayComment(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDisplayIcon()I
.end method

.method public abstract getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getVerifiedText(Z)I
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/LinkedResource;--->getViewIntent()Landroid/content/Intent;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isViewable()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/LinkedResource;--->isViewable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
