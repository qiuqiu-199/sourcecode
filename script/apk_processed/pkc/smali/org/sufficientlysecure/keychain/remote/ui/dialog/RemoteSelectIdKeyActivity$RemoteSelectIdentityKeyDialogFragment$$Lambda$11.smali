.class final synthetic Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->lambda$setupListenersForPresenter$11$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;--->onItemClick(Landroid/view/View;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
