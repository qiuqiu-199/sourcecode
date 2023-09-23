.class public Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;
.super Ljava/lang/Object;
.source "DialogFragmentWorkaround.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;,
        Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;,
        Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;
    }
.end annotation


# static fields
.field public static final INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

.field private static final RUNNABLE_DELAY:I = 0x12c


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Impl;-><init>(Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevelPriorLevel17Impl;-><init>(Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$1;)V

    :goto_0
    sput-object v0, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
