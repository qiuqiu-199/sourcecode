.class Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;
.super Ljava/lang/Object;
.source "ViewKeyFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 98
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClickIdentity(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 101
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;--->onClickIdentity(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickIdentityMore(ILandroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;ILandroid/view/View;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;--->onClickIdentityMore(ILandroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
