.class Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;
.super Ljava/lang/Object;
.source "EditKeyFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->addSubkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 184
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAlgorithmSelected(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 187
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->add(Ljava/lang/Object;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;--->onAlgorithmSelected(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
