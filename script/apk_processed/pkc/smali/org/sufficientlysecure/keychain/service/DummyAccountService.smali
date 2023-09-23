.class public Lorg/sufficientlysecure/keychain/service/DummyAccountService;
.super Landroid/app/Service;
.source "DummyAccountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/DummyAccountService$Authenticator;,
        Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;
    }
.end annotation


# instance fields
.field private toaster:Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Landroid/app/Service;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/DummyAccountService;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/service/DummyAccountService;)Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/DummyAccountService;->toaster:Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 130
    new-instance v2, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;

    const/4 v0, 0x0

    invoke-direct {v2, v1, v1, v0}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;-><init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService;Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/DummyAccountService$1;)V

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/DummyAccountService;->toaster:Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;

    .line 131
    new-instance v2, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Authenticator;

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Authenticator;-><init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/DummyAccountService;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
