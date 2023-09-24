.class public Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;
.super Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
.source "KeyserverClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryTooShortException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2585b783f16938b2L


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 65
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
