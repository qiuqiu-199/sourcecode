.class Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;
.super Ljava/lang/Object;
.source "EncryptTextFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->toggleEnableCompression(Landroid/view/MenuItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

.field final synthetic val$compress:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 249
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->val$compress:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAction()V
    .locals 10

    move-object/16 v7, p0

    .line 252
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->val$compress:Z

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setTextUseCompression(Z)V

    .line 253
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-boolean v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->val$compress:Z

    if-eqz v0, :cond_0

    const v0, 0x7f110caf

    const v2, 0x7f110caf

    goto :goto_0

    :cond_0
    const v0, 0x7f110cae

    const v2, 0x7f110cae

    :goto_0
    const/16 v3, 0x5dc

    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const/4 v5, 0x0

    const v6, 0x7f11007f

    invoke-static/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    const/4 v2, 0x0

    .line 257
    invoke-interface {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;Z)V

    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;--->onAction()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
