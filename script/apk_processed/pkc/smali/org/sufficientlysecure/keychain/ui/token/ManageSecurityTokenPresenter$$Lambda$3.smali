.class final synthetic Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lambda$delayPerformKeyCheck$0$ManageSecurityTokenPresenter()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;--->run()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
