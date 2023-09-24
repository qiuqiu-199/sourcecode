.class Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;
.super Ljava/lang/Object;
.source "AddEditKeyserverDialogFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

.field final synthetic val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field final synthetic val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 243
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;--->onCancel()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNeutralButton()V
    .locals 7

    move-object/16 v4, p0

    .line 255
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    .line 258
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    .line 255
    invoke-virtual {v0, v1, v3, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->verifyConnection(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;--->onNeutralButton()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOrbotStarted()V
    .locals 7

    move-object/16 v4, p0

    .line 246
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    .line 249
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->verifyConnection(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;--->onOrbotStarted()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
