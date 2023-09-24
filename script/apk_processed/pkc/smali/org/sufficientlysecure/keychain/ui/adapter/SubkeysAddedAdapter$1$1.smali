.class Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;
.super Ljava/lang/Object;
.source "SubkeysAddedAdapter.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 120
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAlgorithmSelected(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 125
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 126
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->remove(Ljava/lang/Object;)V

    .line 127
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    invoke-virtual {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->insert(Ljava/lang/Object;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;--->onAlgorithmSelected(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
