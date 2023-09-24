.class Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;
.super Ljava/lang/Object;
.source "ImportKeysListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 172
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 175
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setAdvanced(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
