.class Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;
.super Ljava/lang/Object;
.source "EditUserIdDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 91
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
