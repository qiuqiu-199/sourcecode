.class Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract;
.super Ljava/lang/Object;
.source "ManageSecurityTokenContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;,
        Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
