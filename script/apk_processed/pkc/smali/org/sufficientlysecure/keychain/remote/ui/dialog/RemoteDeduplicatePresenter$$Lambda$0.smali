.class final synthetic Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->bridge$lambda$0$RemoteDeduplicatePresenter(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;--->onChanged(Ljava/lang/Object;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
