.class Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;
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
    name = "SDKLevelPriorLevel17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public runnableRunDelayed(Ljava/lang/Runnable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 54
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;--->runnableRunDelayed(Ljava/lang/Runnable;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
