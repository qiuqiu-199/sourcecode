.class public Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;
.super Ljava/lang/Exception;
.source "KeyserverClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudSearchFailureException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2585b783f16938b3L


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 33
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method