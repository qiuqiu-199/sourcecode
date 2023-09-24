.class public final Lorg/sufficientlysecure/keychain/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final WRITE_TEMPORARY_STORAGE:Ljava/lang/String; = "org.sufficientlysecure.keychain.WRITE_TEMPORARY_STORAGE"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Manifest$permission;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
