.class Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;
.super Ljava/lang/Object;
.source "DialogFragmentWorkaround.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKLevel17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public runnableRunDelayed(Ljava/lang/Runnable;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;--->runnableRunDelayed(Ljava/lang/Runnable;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
