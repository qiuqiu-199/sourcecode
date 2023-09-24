.class public final Lorg/sufficientlysecure/keychain/Constants$key;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "key"
.end annotation


# static fields
.field public static final backup_code:J = -0x2L

.field public static final none:J = 0x0L

.field public static final symmetric:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 203
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$key;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
