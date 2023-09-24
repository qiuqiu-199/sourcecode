.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnDismissListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onDismiss(Landroid/support/v7/widget/PopupMenu;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->lambda$showContextMenu$5$ViewKeyFragment(Landroid/support/v7/widget/PopupMenu;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;--->onDismiss(Landroid/support/v7/widget/PopupMenu;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
